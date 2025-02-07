#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "thrift_c_glib::thrift_c_glib" for configuration "Release"
set_property(TARGET thrift_c_glib::thrift_c_glib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(thrift_c_glib::thrift_c_glib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libthrift_c_glib.0.14.2.dylib"
  IMPORTED_SONAME_RELEASE "@rpath/libthrift_c_glib.0.14.2.dylib"
  )

list(APPEND _cmake_import_check_targets thrift_c_glib::thrift_c_glib )
list(APPEND _cmake_import_check_files_for_thrift_c_glib::thrift_c_glib "${_IMPORT_PREFIX}/lib/libthrift_c_glib.0.14.2.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
