# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/boost-1.86.0")
  file(MAKE_DIRECTORY "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/boost-1.86.0")
endif()
file(MAKE_DIRECTORY
  "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/staging/src/boost-build"
  "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/staging"
  "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/staging/tmp"
  "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/staging/src/boost-stamp"
  "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/staging/src"
  "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/staging/src/boost-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/staging/src/boost-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/staging/src/boost-stamp${cfgdir}") # cfgdir has leading slash
endif()
