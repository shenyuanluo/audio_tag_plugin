# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(audio_tag_plugin_library VERSION 0.0.1 LANGUAGES C)

set(CMAKE_CXX_STANDARD 11)

add_library(audio_tag_plugin SHARED
  "audio_tag_plugin.cpp"
  "my_class.cpp"
)

# iOS 不需要加 -fPIC，Android 需要
if (CMAKE_SYSTEM_NAME STREQUAL "Android")
  set(CMAKE_POSITION_INDEPENDENT_CODE ON)
endif()

set_target_properties(audio_tag_plugin PROPERTIES
  PUBLIC_HEADER audio_tag_plugin.h
  OUTPUT_NAME "audio_tag_plugin"
)

target_compile_definitions(audio_tag_plugin PUBLIC DART_SHARED_LIB)

if (ANDROID)
  # Support Android 15 16k page size
  target_link_options(audio_tag_plugin PRIVATE "-Wl,-z,max-page-size=16384")
endif()
