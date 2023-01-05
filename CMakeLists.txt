cmake_minimum_required(VERSION 3.13)
project(BatteryTemplateProject)

add_definitions("-std=c++20")

include(${CMAKE_BINARY_DIR}/../conanbuildinfo.cmake)
conan_basic_setup()

file(GLOB_RECURSE SOURCES "src/*")
add_executable(BatteryTemplateProject "")

target_sources(BatteryTemplateProject PUBLIC ${SOURCES})
target_compile_features(BatteryTemplateProject PUBLIC cxx_std_20)
target_include_directories(BatteryTemplateProject PUBLIC include)
target_include_directories(BatteryTemplateProject PUBLIC /usr/local/include/clip)
target_link_libraries(BatteryTemplateProject Battery)
target_link_libraries(BatteryTemplateProject ${CONAN_LIBS})

#target_precompile_headers(BatteryTemplateProject PUBLIC include/pch.h)
