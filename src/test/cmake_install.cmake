# Install script for directory: /Users/poojitaraj/Constraint/reb/721-P3-Constraints/test

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/poojitaraj/Constraint/reb/721-P3-Constraints/src/test/binder/cmake_install.cmake")
  include("/Users/poojitaraj/Constraint/reb/721-P3-Constraints/src/test/catalog/cmake_install.cmake")
  include("/Users/poojitaraj/Constraint/reb/721-P3-Constraints/src/test/common/cmake_install.cmake")
  include("/Users/poojitaraj/Constraint/reb/721-P3-Constraints/src/test/execution/cmake_install.cmake")
  include("/Users/poojitaraj/Constraint/reb/721-P3-Constraints/src/test/integration/cmake_install.cmake")
  include("/Users/poojitaraj/Constraint/reb/721-P3-Constraints/src/test/metrics/cmake_install.cmake")
  include("/Users/poojitaraj/Constraint/reb/721-P3-Constraints/src/test/network/cmake_install.cmake")
  include("/Users/poojitaraj/Constraint/reb/721-P3-Constraints/src/test/optimizer/cmake_install.cmake")
  include("/Users/poojitaraj/Constraint/reb/721-P3-Constraints/src/test/parser/cmake_install.cmake")
  include("/Users/poojitaraj/Constraint/reb/721-P3-Constraints/src/test/planner/cmake_install.cmake")
  include("/Users/poojitaraj/Constraint/reb/721-P3-Constraints/src/test/settings/cmake_install.cmake")
  include("/Users/poojitaraj/Constraint/reb/721-P3-Constraints/src/test/storage/cmake_install.cmake")
  include("/Users/poojitaraj/Constraint/reb/721-P3-Constraints/src/test/traffic_cop/cmake_install.cmake")
  include("/Users/poojitaraj/Constraint/reb/721-P3-Constraints/src/test/transaction/cmake_install.cmake")
  include("/Users/poojitaraj/Constraint/reb/721-P3-Constraints/src/test/type/cmake_install.cmake")

endif()
