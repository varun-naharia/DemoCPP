cmake_minimum_required(VERSION 2.8)

project(thriftgen)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED on)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

set(THRIFTGEN_FILES
  "${CMAKE_CURRENT_BINARY_DIR}/genfiles/LockedObject_types.cpp"
  "${CMAKE_CURRENT_BINARY_DIR}/genfiles/LockedObject_types.h"
  "${CMAKE_CURRENT_BINARY_DIR}/genfiles/SignatureMetadata_types.cpp"
  "${CMAKE_CURRENT_BINARY_DIR}/genfiles/SignatureMetadata_types.h"
  "${CMAKE_CURRENT_BINARY_DIR}/genfiles/EmployeePublicKeyMetadata_types.cpp"
  "${CMAKE_CURRENT_BINARY_DIR}/genfiles/EmployeePublicKeyMetadata_types.h"
)

add_custom_command(OUTPUT "${CMAKE_CURRENT_BINARY_DIR}/genfiles"
  COMMAND ${CMAKE_COMMAND} -E make_directory "${CMAKE_CURRENT_BINARY_DIR}/genfiles"
  WORKING_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}"
  COMMENT "Generating thrift genfiles directory."
  VERBATIM
)

add_custom_command(OUTPUT ${THRIFTGEN_FILES}
  COMMAND ${THRIFT_INSTALL_DIR}/bin/thrift -gen cpp -out . ${CMAKE_CURRENT_SOURCE_DIR}/LockedObject.thrift
  COMMAND ${THRIFT_INSTALL_DIR}/bin/thrift -gen cpp -out . ${CMAKE_CURRENT_SOURCE_DIR}/SignatureMetadata.thrift
  COMMAND ${THRIFT_INSTALL_DIR}/bin/thrift -gen cpp -out . ${CMAKE_CURRENT_SOURCE_DIR}/EmployeePublicKeyMetadata.thrift
  WORKING_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/genfiles"
  DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/LockedObject.thrift"
  DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/SignatureMetadata.thrift"
  DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/EmployeePublicKeyMetadata.thrift"
  DEPENDS "${CMAKE_CURRENT_BINARY_DIR}/genfiles"
  COMMENT "Generating thrift files."
  VERBATIM
)

add_custom_target(thrift-gen DEPENDS ${THRIFTGEN_FILES})
 
add_library(bayunlo STATIC
    ${THRIFTGEN_FILES}
)
target_include_directories(bayunlo PRIVATE 
${THRIFT_INSTALL_DIR}/include
${BOOST_INSTALL_DIR}/include
)

install(TARGETS bayunlo
    ARCHIVE DESTINATION lib)

install(FILES
    "${CMAKE_CURRENT_BINARY_DIR}/genfiles/LockedObject_types.h"
    "${CMAKE_CURRENT_BINARY_DIR}/genfiles/SignatureMetadata_types.h"
    "${CMAKE_CURRENT_BINARY_DIR}/genfiles/EmployeePublicKeyMetadata_types.h"
    DESTINATION include)

