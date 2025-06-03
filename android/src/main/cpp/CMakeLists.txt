cmake_minimum_required(VERSION 3.10)
project(audio_tag_plugin)

add_library(audio_tag_plugin SHARED
  ../../../../src/audio_tag_plugin.cpp
  ../../../../src/my_class.cpp
)

target_include_directories(audio_tag_plugin PRIVATE
  ../../../../src
)

find_library(log-lib log)

target_link_libraries(audio_tag_plugin
  ${log-lib}
)
