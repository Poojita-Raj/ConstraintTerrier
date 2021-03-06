#pragma once

#include <memory>
#include <utility>
#include <vector>

#include "parser/expression/abstract_expression.h"
#include "parser/expression/constant_value_expression.h"
#include "parser/postgresparser.h"
#include "type/transient_value_factory.h"
#include "type/type_id.h"

namespace terrier::parser {

/**
 * ComparisonExpression represents comparisons between multiple expressions like < and >.
 */
class ComparisonExpression : public AbstractExpression {
 public:
  /**
   * Instantiates a new comparison expression.
   * @param cmp_type type of comparison
   * @param children vector containing exactly two children, left then right
   */
  ComparisonExpression(const ExpressionType cmp_type, std::vector<std::unique_ptr<AbstractExpression>> &&children)
      : AbstractExpression(cmp_type, type::TypeId::BOOLEAN, std::move(children)) {}

  /** Default constructor for deserialization. */
  ComparisonExpression() = default;

  /**
   * Copies the ComparisonExpression
   * @returns copy of this
   */
  std::unique_ptr<AbstractExpression> Copy() const override {
    std::vector<std::unique_ptr<AbstractExpression>> children;
    for (const auto &child : GetChildren()) {
      children.emplace_back(child->Copy());
    }
    return CopyWithChildren(std::move(children));
  }

  /**
   * Creates a copy of the current AbstractExpression with new children implanted.
   * The children should not be owned by any other AbstractExpression.
   * @param children New children to be owned by the copy
   * @returns copy of this with new children
   */
  std::unique_ptr<AbstractExpression> CopyWithChildren(
      std::vector<std::unique_ptr<AbstractExpression>> &&children) const override {
    auto expr = std::make_unique<ComparisonExpression>(GetExpressionType(), std::move(children));
    expr->SetMutableStateForCopy(*this);
    return expr;
  }

  void Accept(common::ManagedPointer<binder::SqlNodeVisitor> v,
              common::ManagedPointer<binder::BinderSherpa> sherpa) override {
    sherpa->CheckDesiredType(common::ManagedPointer(this).CastManagedPointerTo<AbstractExpression>());
    sherpa->SetDesiredTypePair(GetChild(0), GetChild(1));
    // Invoke the visitor pattern on the children.
    v->Visit(common::ManagedPointer(this), sherpa);
  }
};

DEFINE_JSON_DECLARATIONS(ComparisonExpression);

}  // namespace terrier::parser
