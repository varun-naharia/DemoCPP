# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/thrift-0.14.2")
  file(MAKE_DIRECTORY "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/thrift-0.14.2")
endif()
file(MAKE_DIRECTORY
  "/Users/varun/Documents/Projects/CPP/Demo/build-ios/SDKThirdParty-prefix/src/SDKThirdParty-build/thrift-prefix/src/thrift-build"
  "/Users/varun/Documents/Projects/CPP/Demo/build-ios/staging"
  "/Users/varun/Documents/Projects/CPP/Demo/build-ios/SDKThirdParty-prefix/src/SDKThirdParty-build/thrift-prefix/tmp"
  "/Users/varun/Documents/Projects/CPP/Demo/build-ios/SDKThirdParty-prefix/src/SDKThirdParty-build/thrift-prefix/src/thrift-stamp"
  "/Users/varun/Documents/Projects/CPP/Demo/build-ios/SDKThirdParty-prefix/src/SDKThirdParty-build/thrift-prefix/src"
  "/Users/varun/Documents/Projects/CPP/Demo/build-ios/SDKThirdParty-prefix/src/SDKThirdParty-build/thrift-prefix/src/thrift-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/varun/Documents/Projects/CPP/Demo/build-ios/SDKThirdParty-prefix/src/SDKThirdParty-build/thrift-prefix/src/thrift-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/varun/Documents/Projects/CPP/Demo/build-ios/SDKThirdParty-prefix/src/SDKThirdParty-build/thrift-prefix/src/thrift-stamp${cfgdir}") # cfgdir has leading slash
endif()
