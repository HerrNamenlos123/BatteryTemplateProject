include(CMakeParseArguments)

macro(conan_find_apple_frameworks FRAMEWORKS_FOUND FRAMEWORKS SUFFIX BUILD_TYPE)
    if(APPLE)
        if(CMAKE_BUILD_TYPE)
            set(_BTYPE ${CMAKE_BUILD_TYPE})
        elseif(NOT BUILD_TYPE STREQUAL "")
            set(_BTYPE ${BUILD_TYPE})
        endif()
        if(_BTYPE)
            if(${_BTYPE} MATCHES "Debug|_DEBUG")
                set(CONAN_FRAMEWORKS${SUFFIX} ${CONAN_FRAMEWORKS${SUFFIX}_DEBUG} ${CONAN_FRAMEWORKS${SUFFIX}})
                set(CONAN_FRAMEWORK_DIRS${SUFFIX} ${CONAN_FRAMEWORK_DIRS${SUFFIX}_DEBUG} ${CONAN_FRAMEWORK_DIRS${SUFFIX}})
            elseif(${_BTYPE} MATCHES "Release|_RELEASE")
                set(CONAN_FRAMEWORKS${SUFFIX} ${CONAN_FRAMEWORKS${SUFFIX}_RELEASE} ${CONAN_FRAMEWORKS${SUFFIX}})
                set(CONAN_FRAMEWORK_DIRS${SUFFIX} ${CONAN_FRAMEWORK_DIRS${SUFFIX}_RELEASE} ${CONAN_FRAMEWORK_DIRS${SUFFIX}})
            elseif(${_BTYPE} MATCHES "RelWithDebInfo|_RELWITHDEBINFO")
                set(CONAN_FRAMEWORKS${SUFFIX} ${CONAN_FRAMEWORKS${SUFFIX}_RELWITHDEBINFO} ${CONAN_FRAMEWORKS${SUFFIX}})
                set(CONAN_FRAMEWORK_DIRS${SUFFIX} ${CONAN_FRAMEWORK_DIRS${SUFFIX}_RELWITHDEBINFO} ${CONAN_FRAMEWORK_DIRS${SUFFIX}})
            elseif(${_BTYPE} MATCHES "MinSizeRel|_MINSIZEREL")
                set(CONAN_FRAMEWORKS${SUFFIX} ${CONAN_FRAMEWORKS${SUFFIX}_MINSIZEREL} ${CONAN_FRAMEWORKS${SUFFIX}})
                set(CONAN_FRAMEWORK_DIRS${SUFFIX} ${CONAN_FRAMEWORK_DIRS${SUFFIX}_MINSIZEREL} ${CONAN_FRAMEWORK_DIRS${SUFFIX}})
            endif()
        endif()
        foreach(_FRAMEWORK ${FRAMEWORKS})
            # https://cmake.org/pipermail/cmake-developers/2017-August/030199.html
            find_library(CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND NAME ${_FRAMEWORK} PATHS ${CONAN_FRAMEWORK_DIRS${SUFFIX}} CMAKE_FIND_ROOT_PATH_BOTH)
            if(CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND)
                list(APPEND ${FRAMEWORKS_FOUND} ${CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND})
            else()
                message(FATAL_ERROR "Framework library ${_FRAMEWORK} not found in paths: ${CONAN_FRAMEWORK_DIRS${SUFFIX}}")
            endif()
        endforeach()
    endif()
endmacro()


#################
###  ALLEGRO5
#################
set(CONAN_ALLEGRO5_ROOT "/home/me/.conan/data/allegro5/5.2.7/_/_/package/d21d59d0f83bcf9391b4ac65181820ab23686472")
set(CONAN_INCLUDE_DIRS_ALLEGRO5 "/home/me/.conan/data/allegro5/5.2.7/_/_/package/d21d59d0f83bcf9391b4ac65181820ab23686472/include")
set(CONAN_LIB_DIRS_ALLEGRO5 "/home/me/.conan/data/allegro5/5.2.7/_/_/package/d21d59d0f83bcf9391b4ac65181820ab23686472/lib")
set(CONAN_BIN_DIRS_ALLEGRO5 )
set(CONAN_RES_DIRS_ALLEGRO5 )
set(CONAN_SRC_DIRS_ALLEGRO5 )
set(CONAN_BUILD_DIRS_ALLEGRO5 "/home/me/.conan/data/allegro5/5.2.7/_/_/package/d21d59d0f83bcf9391b4ac65181820ab23686472/")
set(CONAN_FRAMEWORK_DIRS_ALLEGRO5 )
set(CONAN_LIBS_ALLEGRO5 allegro_monolith-static)
set(CONAN_PKG_LIBS_ALLEGRO5 allegro_monolith-static)
set(CONAN_SYSTEM_LIBS_ALLEGRO5 )
set(CONAN_FRAMEWORKS_ALLEGRO5 )
set(CONAN_FRAMEWORKS_FOUND_ALLEGRO5 "")  # Will be filled later
set(CONAN_DEFINES_ALLEGRO5 "-DALLEGRO_STATICLINK")
set(CONAN_BUILD_MODULES_PATHS_ALLEGRO5 )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_ALLEGRO5 "ALLEGRO_STATICLINK")

set(CONAN_C_FLAGS_ALLEGRO5 "")
set(CONAN_CXX_FLAGS_ALLEGRO5 "")
set(CONAN_SHARED_LINKER_FLAGS_ALLEGRO5 "")
set(CONAN_EXE_LINKER_FLAGS_ALLEGRO5 "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_ALLEGRO5_LIST "")
set(CONAN_CXX_FLAGS_ALLEGRO5_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_ALLEGRO5_LIST "")
set(CONAN_EXE_LINKER_FLAGS_ALLEGRO5_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_ALLEGRO5 "${CONAN_FRAMEWORKS_ALLEGRO5}" "_ALLEGRO5" "")
# Append to aggregated values variable
set(CONAN_LIBS_ALLEGRO5 ${CONAN_PKG_LIBS_ALLEGRO5} ${CONAN_SYSTEM_LIBS_ALLEGRO5} ${CONAN_FRAMEWORKS_FOUND_ALLEGRO5})


#################
###  GLM
#################
set(CONAN_GLM_ROOT "/home/me/.conan/data/glm/0.9.9.8/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_GLM "/home/me/.conan/data/glm/0.9.9.8/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_GLM )
set(CONAN_BIN_DIRS_GLM )
set(CONAN_RES_DIRS_GLM )
set(CONAN_SRC_DIRS_GLM )
set(CONAN_BUILD_DIRS_GLM "/home/me/.conan/data/glm/0.9.9.8/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_GLM )
set(CONAN_LIBS_GLM )
set(CONAN_PKG_LIBS_GLM )
set(CONAN_SYSTEM_LIBS_GLM )
set(CONAN_FRAMEWORKS_GLM )
set(CONAN_FRAMEWORKS_FOUND_GLM "")  # Will be filled later
set(CONAN_DEFINES_GLM )
set(CONAN_BUILD_MODULES_PATHS_GLM )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_GLM )

set(CONAN_C_FLAGS_GLM "")
set(CONAN_CXX_FLAGS_GLM "")
set(CONAN_SHARED_LINKER_FLAGS_GLM "")
set(CONAN_EXE_LINKER_FLAGS_GLM "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_GLM_LIST "")
set(CONAN_CXX_FLAGS_GLM_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_GLM_LIST "")
set(CONAN_EXE_LINKER_FLAGS_GLM_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_GLM "${CONAN_FRAMEWORKS_GLM}" "_GLM" "")
# Append to aggregated values variable
set(CONAN_LIBS_GLM ${CONAN_PKG_LIBS_GLM} ${CONAN_SYSTEM_LIBS_GLM} ${CONAN_FRAMEWORKS_FOUND_GLM})


#################
###  ASIO
#################
set(CONAN_ASIO_ROOT "/home/me/.conan/data/asio/1.22.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_ASIO "/home/me/.conan/data/asio/1.22.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_ASIO )
set(CONAN_BIN_DIRS_ASIO )
set(CONAN_RES_DIRS_ASIO )
set(CONAN_SRC_DIRS_ASIO )
set(CONAN_BUILD_DIRS_ASIO "/home/me/.conan/data/asio/1.22.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_ASIO )
set(CONAN_LIBS_ASIO )
set(CONAN_PKG_LIBS_ASIO )
set(CONAN_SYSTEM_LIBS_ASIO pthread)
set(CONAN_FRAMEWORKS_ASIO )
set(CONAN_FRAMEWORKS_FOUND_ASIO "")  # Will be filled later
set(CONAN_DEFINES_ASIO "-DASIO_STANDALONE")
set(CONAN_BUILD_MODULES_PATHS_ASIO )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_ASIO "ASIO_STANDALONE")

set(CONAN_C_FLAGS_ASIO "")
set(CONAN_CXX_FLAGS_ASIO "")
set(CONAN_SHARED_LINKER_FLAGS_ASIO "")
set(CONAN_EXE_LINKER_FLAGS_ASIO "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_ASIO_LIST "")
set(CONAN_CXX_FLAGS_ASIO_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_ASIO_LIST "")
set(CONAN_EXE_LINKER_FLAGS_ASIO_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_ASIO "${CONAN_FRAMEWORKS_ASIO}" "_ASIO" "")
# Append to aggregated values variable
set(CONAN_LIBS_ASIO ${CONAN_PKG_LIBS_ASIO} ${CONAN_SYSTEM_LIBS_ASIO} ${CONAN_FRAMEWORKS_FOUND_ASIO})


#################
###  NLOHMANN_JSON
#################
set(CONAN_NLOHMANN_JSON_ROOT "/home/me/.conan/data/nlohmann_json/3.10.5/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_NLOHMANN_JSON "/home/me/.conan/data/nlohmann_json/3.10.5/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_NLOHMANN_JSON )
set(CONAN_BIN_DIRS_NLOHMANN_JSON )
set(CONAN_RES_DIRS_NLOHMANN_JSON )
set(CONAN_SRC_DIRS_NLOHMANN_JSON )
set(CONAN_BUILD_DIRS_NLOHMANN_JSON "/home/me/.conan/data/nlohmann_json/3.10.5/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_NLOHMANN_JSON )
set(CONAN_LIBS_NLOHMANN_JSON )
set(CONAN_PKG_LIBS_NLOHMANN_JSON )
set(CONAN_SYSTEM_LIBS_NLOHMANN_JSON )
set(CONAN_FRAMEWORKS_NLOHMANN_JSON )
set(CONAN_FRAMEWORKS_FOUND_NLOHMANN_JSON "")  # Will be filled later
set(CONAN_DEFINES_NLOHMANN_JSON )
set(CONAN_BUILD_MODULES_PATHS_NLOHMANN_JSON )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_NLOHMANN_JSON )

set(CONAN_C_FLAGS_NLOHMANN_JSON "")
set(CONAN_CXX_FLAGS_NLOHMANN_JSON "")
set(CONAN_SHARED_LINKER_FLAGS_NLOHMANN_JSON "")
set(CONAN_EXE_LINKER_FLAGS_NLOHMANN_JSON "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_NLOHMANN_JSON_LIST "")
set(CONAN_CXX_FLAGS_NLOHMANN_JSON_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_NLOHMANN_JSON_LIST "")
set(CONAN_EXE_LINKER_FLAGS_NLOHMANN_JSON_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_NLOHMANN_JSON "${CONAN_FRAMEWORKS_NLOHMANN_JSON}" "_NLOHMANN_JSON" "")
# Append to aggregated values variable
set(CONAN_LIBS_NLOHMANN_JSON ${CONAN_PKG_LIBS_NLOHMANN_JSON} ${CONAN_SYSTEM_LIBS_NLOHMANN_JSON} ${CONAN_FRAMEWORKS_FOUND_NLOHMANN_JSON})


#################
###  SPDLOG
#################
set(CONAN_SPDLOG_ROOT "/home/me/.conan/data/spdlog/1.9.2/_/_/package/ff0052ef32311f77d1f5378b4fcec36de434e6b3")
set(CONAN_INCLUDE_DIRS_SPDLOG "/home/me/.conan/data/spdlog/1.9.2/_/_/package/ff0052ef32311f77d1f5378b4fcec36de434e6b3/include")
set(CONAN_LIB_DIRS_SPDLOG "/home/me/.conan/data/spdlog/1.9.2/_/_/package/ff0052ef32311f77d1f5378b4fcec36de434e6b3/lib")
set(CONAN_BIN_DIRS_SPDLOG )
set(CONAN_RES_DIRS_SPDLOG )
set(CONAN_SRC_DIRS_SPDLOG )
set(CONAN_BUILD_DIRS_SPDLOG "/home/me/.conan/data/spdlog/1.9.2/_/_/package/ff0052ef32311f77d1f5378b4fcec36de434e6b3/")
set(CONAN_FRAMEWORK_DIRS_SPDLOG )
set(CONAN_LIBS_SPDLOG spdlog)
set(CONAN_PKG_LIBS_SPDLOG spdlog)
set(CONAN_SYSTEM_LIBS_SPDLOG pthread)
set(CONAN_FRAMEWORKS_SPDLOG )
set(CONAN_FRAMEWORKS_FOUND_SPDLOG "")  # Will be filled later
set(CONAN_DEFINES_SPDLOG "-DSPDLOG_FMT_EXTERNAL"
			"-DSPDLOG_COMPILED_LIB")
set(CONAN_BUILD_MODULES_PATHS_SPDLOG )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_SPDLOG "SPDLOG_FMT_EXTERNAL"
			"SPDLOG_COMPILED_LIB")

set(CONAN_C_FLAGS_SPDLOG "")
set(CONAN_CXX_FLAGS_SPDLOG "")
set(CONAN_SHARED_LINKER_FLAGS_SPDLOG "")
set(CONAN_EXE_LINKER_FLAGS_SPDLOG "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_SPDLOG_LIST "")
set(CONAN_CXX_FLAGS_SPDLOG_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_SPDLOG_LIST "")
set(CONAN_EXE_LINKER_FLAGS_SPDLOG_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_SPDLOG "${CONAN_FRAMEWORKS_SPDLOG}" "_SPDLOG" "")
# Append to aggregated values variable
set(CONAN_LIBS_SPDLOG ${CONAN_PKG_LIBS_SPDLOG} ${CONAN_SYSTEM_LIBS_SPDLOG} ${CONAN_FRAMEWORKS_FOUND_SPDLOG})


#################
###  IMPLOT
#################
set(CONAN_IMPLOT_ROOT "/home/me/.conan/data/implot/0.13/_/_/package/d7aeea1a4dcb424e6acf76ddc84e5c310ae60ec2")
set(CONAN_INCLUDE_DIRS_IMPLOT "/home/me/.conan/data/implot/0.13/_/_/package/d7aeea1a4dcb424e6acf76ddc84e5c310ae60ec2/include")
set(CONAN_LIB_DIRS_IMPLOT "/home/me/.conan/data/implot/0.13/_/_/package/d7aeea1a4dcb424e6acf76ddc84e5c310ae60ec2/lib")
set(CONAN_BIN_DIRS_IMPLOT )
set(CONAN_RES_DIRS_IMPLOT )
set(CONAN_SRC_DIRS_IMPLOT )
set(CONAN_BUILD_DIRS_IMPLOT "/home/me/.conan/data/implot/0.13/_/_/package/d7aeea1a4dcb424e6acf76ddc84e5c310ae60ec2/")
set(CONAN_FRAMEWORK_DIRS_IMPLOT )
set(CONAN_LIBS_IMPLOT implot)
set(CONAN_PKG_LIBS_IMPLOT implot)
set(CONAN_SYSTEM_LIBS_IMPLOT )
set(CONAN_FRAMEWORKS_IMPLOT )
set(CONAN_FRAMEWORKS_FOUND_IMPLOT "")  # Will be filled later
set(CONAN_DEFINES_IMPLOT )
set(CONAN_BUILD_MODULES_PATHS_IMPLOT )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_IMPLOT )

set(CONAN_C_FLAGS_IMPLOT "")
set(CONAN_CXX_FLAGS_IMPLOT "")
set(CONAN_SHARED_LINKER_FLAGS_IMPLOT "")
set(CONAN_EXE_LINKER_FLAGS_IMPLOT "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_IMPLOT_LIST "")
set(CONAN_CXX_FLAGS_IMPLOT_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_IMPLOT_LIST "")
set(CONAN_EXE_LINKER_FLAGS_IMPLOT_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_IMPLOT "${CONAN_FRAMEWORKS_IMPLOT}" "_IMPLOT" "")
# Append to aggregated values variable
set(CONAN_LIBS_IMPLOT ${CONAN_PKG_LIBS_IMPLOT} ${CONAN_SYSTEM_LIBS_IMPLOT} ${CONAN_FRAMEWORKS_FOUND_IMPLOT})


#################
###  SERIAL
#################
set(CONAN_SERIAL_ROOT "/home/me/.conan/data/serial/1.2.1/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d")
set(CONAN_INCLUDE_DIRS_SERIAL "/home/me/.conan/data/serial/1.2.1/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/include")
set(CONAN_LIB_DIRS_SERIAL "/home/me/.conan/data/serial/1.2.1/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/lib")
set(CONAN_BIN_DIRS_SERIAL )
set(CONAN_RES_DIRS_SERIAL )
set(CONAN_SRC_DIRS_SERIAL )
set(CONAN_BUILD_DIRS_SERIAL "/home/me/.conan/data/serial/1.2.1/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/")
set(CONAN_FRAMEWORK_DIRS_SERIAL )
set(CONAN_LIBS_SERIAL serial)
set(CONAN_PKG_LIBS_SERIAL serial)
set(CONAN_SYSTEM_LIBS_SERIAL rt pthread)
set(CONAN_FRAMEWORKS_SERIAL )
set(CONAN_FRAMEWORKS_FOUND_SERIAL "")  # Will be filled later
set(CONAN_DEFINES_SERIAL )
set(CONAN_BUILD_MODULES_PATHS_SERIAL )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_SERIAL )

set(CONAN_C_FLAGS_SERIAL "")
set(CONAN_CXX_FLAGS_SERIAL "")
set(CONAN_SHARED_LINKER_FLAGS_SERIAL "")
set(CONAN_EXE_LINKER_FLAGS_SERIAL "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_SERIAL_LIST "")
set(CONAN_CXX_FLAGS_SERIAL_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_SERIAL_LIST "")
set(CONAN_EXE_LINKER_FLAGS_SERIAL_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_SERIAL "${CONAN_FRAMEWORKS_SERIAL}" "_SERIAL" "")
# Append to aggregated values variable
set(CONAN_LIBS_SERIAL ${CONAN_PKG_LIBS_SERIAL} ${CONAN_SYSTEM_LIBS_SERIAL} ${CONAN_FRAMEWORKS_FOUND_SERIAL})


#################
###  FREEIMAGE
#################
set(CONAN_FREEIMAGE_ROOT "/home/me/.conan/data/freeimage/3.18.0/_/_/package/6877c63756d46da3ec08d6fbb3f47cb817f5584b")
set(CONAN_INCLUDE_DIRS_FREEIMAGE "/home/me/.conan/data/freeimage/3.18.0/_/_/package/6877c63756d46da3ec08d6fbb3f47cb817f5584b/include")
set(CONAN_LIB_DIRS_FREEIMAGE "/home/me/.conan/data/freeimage/3.18.0/_/_/package/6877c63756d46da3ec08d6fbb3f47cb817f5584b/lib")
set(CONAN_BIN_DIRS_FREEIMAGE )
set(CONAN_RES_DIRS_FREEIMAGE )
set(CONAN_SRC_DIRS_FREEIMAGE )
set(CONAN_BUILD_DIRS_FREEIMAGE "/home/me/.conan/data/freeimage/3.18.0/_/_/package/6877c63756d46da3ec08d6fbb3f47cb817f5584b/")
set(CONAN_FRAMEWORK_DIRS_FREEIMAGE )
set(CONAN_LIBS_FREEIMAGE freeimageplus freeimage)
set(CONAN_PKG_LIBS_FREEIMAGE freeimageplus freeimage)
set(CONAN_SYSTEM_LIBS_FREEIMAGE )
set(CONAN_FRAMEWORKS_FREEIMAGE )
set(CONAN_FRAMEWORKS_FOUND_FREEIMAGE "")  # Will be filled later
set(CONAN_DEFINES_FREEIMAGE "-DFREEIMAGE_LIB")
set(CONAN_BUILD_MODULES_PATHS_FREEIMAGE )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_FREEIMAGE "FREEIMAGE_LIB")

set(CONAN_C_FLAGS_FREEIMAGE "")
set(CONAN_CXX_FLAGS_FREEIMAGE "")
set(CONAN_SHARED_LINKER_FLAGS_FREEIMAGE "")
set(CONAN_EXE_LINKER_FLAGS_FREEIMAGE "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_FREEIMAGE_LIST "")
set(CONAN_CXX_FLAGS_FREEIMAGE_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_FREEIMAGE_LIST "")
set(CONAN_EXE_LINKER_FLAGS_FREEIMAGE_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_FREEIMAGE "${CONAN_FRAMEWORKS_FREEIMAGE}" "_FREEIMAGE" "")
# Append to aggregated values variable
set(CONAN_LIBS_FREEIMAGE ${CONAN_PKG_LIBS_FREEIMAGE} ${CONAN_SYSTEM_LIBS_FREEIMAGE} ${CONAN_FRAMEWORKS_FOUND_FREEIMAGE})


#################
###  MINIMP3
#################
set(CONAN_MINIMP3_ROOT "/home/me/.conan/data/minimp3/20200304/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_MINIMP3 "/home/me/.conan/data/minimp3/20200304/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_MINIMP3 )
set(CONAN_BIN_DIRS_MINIMP3 )
set(CONAN_RES_DIRS_MINIMP3 )
set(CONAN_SRC_DIRS_MINIMP3 )
set(CONAN_BUILD_DIRS_MINIMP3 "/home/me/.conan/data/minimp3/20200304/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_MINIMP3 )
set(CONAN_LIBS_MINIMP3 )
set(CONAN_PKG_LIBS_MINIMP3 )
set(CONAN_SYSTEM_LIBS_MINIMP3 )
set(CONAN_FRAMEWORKS_MINIMP3 )
set(CONAN_FRAMEWORKS_FOUND_MINIMP3 "")  # Will be filled later
set(CONAN_DEFINES_MINIMP3 )
set(CONAN_BUILD_MODULES_PATHS_MINIMP3 )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_MINIMP3 )

set(CONAN_C_FLAGS_MINIMP3 "")
set(CONAN_CXX_FLAGS_MINIMP3 "")
set(CONAN_SHARED_LINKER_FLAGS_MINIMP3 "")
set(CONAN_EXE_LINKER_FLAGS_MINIMP3 "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_MINIMP3_LIST "")
set(CONAN_CXX_FLAGS_MINIMP3_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_MINIMP3_LIST "")
set(CONAN_EXE_LINKER_FLAGS_MINIMP3_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_MINIMP3 "${CONAN_FRAMEWORKS_MINIMP3}" "_MINIMP3" "")
# Append to aggregated values variable
set(CONAN_LIBS_MINIMP3 ${CONAN_PKG_LIBS_MINIMP3} ${CONAN_SYSTEM_LIBS_MINIMP3} ${CONAN_FRAMEWORKS_FOUND_MINIMP3})


#################
###  OPENAL
#################
set(CONAN_OPENAL_ROOT "/home/me/.conan/data/openal/1.21.1/_/_/package/089c95a463e49c2c916b03846f45156880846725")
set(CONAN_INCLUDE_DIRS_OPENAL "/home/me/.conan/data/openal/1.21.1/_/_/package/089c95a463e49c2c916b03846f45156880846725/include"
			"/home/me/.conan/data/openal/1.21.1/_/_/package/089c95a463e49c2c916b03846f45156880846725/include/AL")
set(CONAN_LIB_DIRS_OPENAL "/home/me/.conan/data/openal/1.21.1/_/_/package/089c95a463e49c2c916b03846f45156880846725/lib")
set(CONAN_BIN_DIRS_OPENAL )
set(CONAN_RES_DIRS_OPENAL )
set(CONAN_SRC_DIRS_OPENAL )
set(CONAN_BUILD_DIRS_OPENAL "/home/me/.conan/data/openal/1.21.1/_/_/package/089c95a463e49c2c916b03846f45156880846725/")
set(CONAN_FRAMEWORK_DIRS_OPENAL )
set(CONAN_LIBS_OPENAL openal)
set(CONAN_PKG_LIBS_OPENAL openal)
set(CONAN_SYSTEM_LIBS_OPENAL dl m stdc++)
set(CONAN_FRAMEWORKS_OPENAL )
set(CONAN_FRAMEWORKS_FOUND_OPENAL "")  # Will be filled later
set(CONAN_DEFINES_OPENAL "-DAL_LIBTYPE_STATIC")
set(CONAN_BUILD_MODULES_PATHS_OPENAL )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_OPENAL "AL_LIBTYPE_STATIC")

set(CONAN_C_FLAGS_OPENAL "")
set(CONAN_CXX_FLAGS_OPENAL "")
set(CONAN_SHARED_LINKER_FLAGS_OPENAL "")
set(CONAN_EXE_LINKER_FLAGS_OPENAL "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_OPENAL_LIST "")
set(CONAN_CXX_FLAGS_OPENAL_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_OPENAL_LIST "")
set(CONAN_EXE_LINKER_FLAGS_OPENAL_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_OPENAL "${CONAN_FRAMEWORKS_OPENAL}" "_OPENAL" "")
# Append to aggregated values variable
set(CONAN_LIBS_OPENAL ${CONAN_PKG_LIBS_OPENAL} ${CONAN_SYSTEM_LIBS_OPENAL} ${CONAN_FRAMEWORKS_FOUND_OPENAL})


#################
###  PHYSFS
#################
set(CONAN_PHYSFS_ROOT "/home/me/.conan/data/physfs/3.0.2/_/_/package/e70569aa908f21a93abd57c3400143d1e003b8b0")
set(CONAN_INCLUDE_DIRS_PHYSFS "/home/me/.conan/data/physfs/3.0.2/_/_/package/e70569aa908f21a93abd57c3400143d1e003b8b0/include")
set(CONAN_LIB_DIRS_PHYSFS "/home/me/.conan/data/physfs/3.0.2/_/_/package/e70569aa908f21a93abd57c3400143d1e003b8b0/lib")
set(CONAN_BIN_DIRS_PHYSFS )
set(CONAN_RES_DIRS_PHYSFS )
set(CONAN_SRC_DIRS_PHYSFS )
set(CONAN_BUILD_DIRS_PHYSFS "/home/me/.conan/data/physfs/3.0.2/_/_/package/e70569aa908f21a93abd57c3400143d1e003b8b0/")
set(CONAN_FRAMEWORK_DIRS_PHYSFS )
set(CONAN_LIBS_PHYSFS physfs)
set(CONAN_PKG_LIBS_PHYSFS physfs)
set(CONAN_SYSTEM_LIBS_PHYSFS pthread)
set(CONAN_FRAMEWORKS_PHYSFS )
set(CONAN_FRAMEWORKS_FOUND_PHYSFS "")  # Will be filled later
set(CONAN_DEFINES_PHYSFS )
set(CONAN_BUILD_MODULES_PATHS_PHYSFS )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_PHYSFS )

set(CONAN_C_FLAGS_PHYSFS "")
set(CONAN_CXX_FLAGS_PHYSFS "")
set(CONAN_SHARED_LINKER_FLAGS_PHYSFS "")
set(CONAN_EXE_LINKER_FLAGS_PHYSFS "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_PHYSFS_LIST "")
set(CONAN_CXX_FLAGS_PHYSFS_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_PHYSFS_LIST "")
set(CONAN_EXE_LINKER_FLAGS_PHYSFS_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_PHYSFS "${CONAN_FRAMEWORKS_PHYSFS}" "_PHYSFS" "")
# Append to aggregated values variable
set(CONAN_LIBS_PHYSFS ${CONAN_PKG_LIBS_PHYSFS} ${CONAN_SYSTEM_LIBS_PHYSFS} ${CONAN_FRAMEWORKS_FOUND_PHYSFS})


#################
###  OPUSFILE
#################
set(CONAN_OPUSFILE_ROOT "/home/me/.conan/data/opusfile/0.12/_/_/package/0ba6dc1ba38ca9e5afd7224827302f0480210c79")
set(CONAN_INCLUDE_DIRS_OPUSFILE "/home/me/.conan/data/opusfile/0.12/_/_/package/0ba6dc1ba38ca9e5afd7224827302f0480210c79/include"
			"/home/me/.conan/data/opusfile/0.12/_/_/package/0ba6dc1ba38ca9e5afd7224827302f0480210c79/include/opus")
set(CONAN_LIB_DIRS_OPUSFILE "/home/me/.conan/data/opusfile/0.12/_/_/package/0ba6dc1ba38ca9e5afd7224827302f0480210c79/lib")
set(CONAN_BIN_DIRS_OPUSFILE )
set(CONAN_RES_DIRS_OPUSFILE )
set(CONAN_SRC_DIRS_OPUSFILE )
set(CONAN_BUILD_DIRS_OPUSFILE "/home/me/.conan/data/opusfile/0.12/_/_/package/0ba6dc1ba38ca9e5afd7224827302f0480210c79/")
set(CONAN_FRAMEWORK_DIRS_OPUSFILE )
set(CONAN_LIBS_OPUSFILE opusurl opusfile)
set(CONAN_PKG_LIBS_OPUSFILE opusurl opusfile)
set(CONAN_SYSTEM_LIBS_OPUSFILE m dl pthread)
set(CONAN_FRAMEWORKS_OPUSFILE )
set(CONAN_FRAMEWORKS_FOUND_OPUSFILE "")  # Will be filled later
set(CONAN_DEFINES_OPUSFILE )
set(CONAN_BUILD_MODULES_PATHS_OPUSFILE )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_OPUSFILE )

set(CONAN_C_FLAGS_OPUSFILE "")
set(CONAN_CXX_FLAGS_OPUSFILE "")
set(CONAN_SHARED_LINKER_FLAGS_OPUSFILE "")
set(CONAN_EXE_LINKER_FLAGS_OPUSFILE "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_OPUSFILE_LIST "")
set(CONAN_CXX_FLAGS_OPUSFILE_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_OPUSFILE_LIST "")
set(CONAN_EXE_LINKER_FLAGS_OPUSFILE_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_OPUSFILE "${CONAN_FRAMEWORKS_OPUSFILE}" "_OPUSFILE" "")
# Append to aggregated values variable
set(CONAN_LIBS_OPUSFILE ${CONAN_PKG_LIBS_OPUSFILE} ${CONAN_SYSTEM_LIBS_OPUSFILE} ${CONAN_FRAMEWORKS_FOUND_OPUSFILE})


#################
###  THEORA
#################
set(CONAN_THEORA_ROOT "/home/me/.conan/data/theora/1.1.1/_/_/package/6e4bc3ab815736fa7c637f569f101e1193ddb5da")
set(CONAN_INCLUDE_DIRS_THEORA "/home/me/.conan/data/theora/1.1.1/_/_/package/6e4bc3ab815736fa7c637f569f101e1193ddb5da/include")
set(CONAN_LIB_DIRS_THEORA "/home/me/.conan/data/theora/1.1.1/_/_/package/6e4bc3ab815736fa7c637f569f101e1193ddb5da/lib")
set(CONAN_BIN_DIRS_THEORA )
set(CONAN_RES_DIRS_THEORA )
set(CONAN_SRC_DIRS_THEORA )
set(CONAN_BUILD_DIRS_THEORA "/home/me/.conan/data/theora/1.1.1/_/_/package/6e4bc3ab815736fa7c637f569f101e1193ddb5da/")
set(CONAN_FRAMEWORK_DIRS_THEORA )
set(CONAN_LIBS_THEORA theora theoraenc theoradec)
set(CONAN_PKG_LIBS_THEORA theora theoraenc theoradec)
set(CONAN_SYSTEM_LIBS_THEORA )
set(CONAN_FRAMEWORKS_THEORA )
set(CONAN_FRAMEWORKS_FOUND_THEORA "")  # Will be filled later
set(CONAN_DEFINES_THEORA )
set(CONAN_BUILD_MODULES_PATHS_THEORA )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_THEORA )

set(CONAN_C_FLAGS_THEORA "")
set(CONAN_CXX_FLAGS_THEORA "")
set(CONAN_SHARED_LINKER_FLAGS_THEORA "")
set(CONAN_EXE_LINKER_FLAGS_THEORA "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_THEORA_LIST "")
set(CONAN_CXX_FLAGS_THEORA_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_THEORA_LIST "")
set(CONAN_EXE_LINKER_FLAGS_THEORA_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_THEORA "${CONAN_FRAMEWORKS_THEORA}" "_THEORA" "")
# Append to aggregated values variable
set(CONAN_LIBS_THEORA ${CONAN_PKG_LIBS_THEORA} ${CONAN_SYSTEM_LIBS_THEORA} ${CONAN_FRAMEWORKS_FOUND_THEORA})


#################
###  GTK
#################
set(CONAN_GTK_ROOT "/home/me/.conan/data/gtk/3.24.24/_/_/package/ed67e3969cd44576f96209b87e6ede3fbf4e71f9")
set(CONAN_INCLUDE_DIRS_GTK "/home/me/.conan/data/gtk/3.24.24/_/_/package/ed67e3969cd44576f96209b87e6ede3fbf4e71f9/include/gail-3.0"
			"/home/me/.conan/data/gtk/3.24.24/_/_/package/ed67e3969cd44576f96209b87e6ede3fbf4e71f9/include/gtk-3.0")
set(CONAN_LIB_DIRS_GTK "/home/me/.conan/data/gtk/3.24.24/_/_/package/ed67e3969cd44576f96209b87e6ede3fbf4e71f9/lib")
set(CONAN_BIN_DIRS_GTK "/home/me/.conan/data/gtk/3.24.24/_/_/package/ed67e3969cd44576f96209b87e6ede3fbf4e71f9/bin")
set(CONAN_RES_DIRS_GTK "/home/me/.conan/data/gtk/3.24.24/_/_/package/ed67e3969cd44576f96209b87e6ede3fbf4e71f9/res")
set(CONAN_SRC_DIRS_GTK )
set(CONAN_BUILD_DIRS_GTK "/home/me/.conan/data/gtk/3.24.24/_/_/package/ed67e3969cd44576f96209b87e6ede3fbf4e71f9/")
set(CONAN_FRAMEWORK_DIRS_GTK )
set(CONAN_LIBS_GTK gailutil-3 gtk-3 gdk-3)
set(CONAN_PKG_LIBS_GTK gailutil-3 gtk-3 gdk-3)
set(CONAN_SYSTEM_LIBS_GTK )
set(CONAN_FRAMEWORKS_GTK )
set(CONAN_FRAMEWORKS_FOUND_GTK "")  # Will be filled later
set(CONAN_DEFINES_GTK )
set(CONAN_BUILD_MODULES_PATHS_GTK )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_GTK )

set(CONAN_C_FLAGS_GTK "")
set(CONAN_CXX_FLAGS_GTK "")
set(CONAN_SHARED_LINKER_FLAGS_GTK "")
set(CONAN_EXE_LINKER_FLAGS_GTK "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_GTK_LIST "")
set(CONAN_CXX_FLAGS_GTK_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_GTK_LIST "")
set(CONAN_EXE_LINKER_FLAGS_GTK_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_GTK "${CONAN_FRAMEWORKS_GTK}" "_GTK" "")
# Append to aggregated values variable
set(CONAN_LIBS_GTK ${CONAN_PKG_LIBS_GTK} ${CONAN_SYSTEM_LIBS_GTK} ${CONAN_FRAMEWORKS_FOUND_GTK})


#################
###  GLU
#################
set(CONAN_GLU_ROOT "/home/me/.conan/data/glu/system/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_GLU )
set(CONAN_LIB_DIRS_GLU )
set(CONAN_BIN_DIRS_GLU )
set(CONAN_RES_DIRS_GLU )
set(CONAN_SRC_DIRS_GLU )
set(CONAN_BUILD_DIRS_GLU "/home/me/.conan/data/glu/system/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_GLU )
set(CONAN_LIBS_GLU )
set(CONAN_PKG_LIBS_GLU )
set(CONAN_SYSTEM_LIBS_GLU GLU GL)
set(CONAN_FRAMEWORKS_GLU )
set(CONAN_FRAMEWORKS_FOUND_GLU "")  # Will be filled later
set(CONAN_DEFINES_GLU )
set(CONAN_BUILD_MODULES_PATHS_GLU )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_GLU )

set(CONAN_C_FLAGS_GLU "")
set(CONAN_CXX_FLAGS_GLU "")
set(CONAN_SHARED_LINKER_FLAGS_GLU "")
set(CONAN_EXE_LINKER_FLAGS_GLU "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_GLU_LIST "")
set(CONAN_CXX_FLAGS_GLU_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_GLU_LIST "")
set(CONAN_EXE_LINKER_FLAGS_GLU_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_GLU "${CONAN_FRAMEWORKS_GLU}" "_GLU" "")
# Append to aggregated values variable
set(CONAN_LIBS_GLU ${CONAN_PKG_LIBS_GLU} ${CONAN_SYSTEM_LIBS_GLU} ${CONAN_FRAMEWORKS_FOUND_GLU})


#################
###  PULSEAUDIO
#################
set(CONAN_PULSEAUDIO_ROOT "/home/me/.conan/data/pulseaudio/14.2/_/_/package/c63e3687eb4370c7bcc632afbe163773ea0d1d6f")
set(CONAN_INCLUDE_DIRS_PULSEAUDIO "/home/me/.conan/data/pulseaudio/14.2/_/_/package/c63e3687eb4370c7bcc632afbe163773ea0d1d6f/include")
set(CONAN_LIB_DIRS_PULSEAUDIO "/home/me/.conan/data/pulseaudio/14.2/_/_/package/c63e3687eb4370c7bcc632afbe163773ea0d1d6f/lib"
			"/home/me/.conan/data/pulseaudio/14.2/_/_/package/c63e3687eb4370c7bcc632afbe163773ea0d1d6f/lib/pulseaudio")
set(CONAN_BIN_DIRS_PULSEAUDIO "/home/me/.conan/data/pulseaudio/14.2/_/_/package/c63e3687eb4370c7bcc632afbe163773ea0d1d6f/bin")
set(CONAN_RES_DIRS_PULSEAUDIO )
set(CONAN_SRC_DIRS_PULSEAUDIO )
set(CONAN_BUILD_DIRS_PULSEAUDIO "/home/me/.conan/data/pulseaudio/14.2/_/_/package/c63e3687eb4370c7bcc632afbe163773ea0d1d6f/")
set(CONAN_FRAMEWORK_DIRS_PULSEAUDIO )
set(CONAN_LIBS_PULSEAUDIO pulse-simple pulse pulsecommon-14.2)
set(CONAN_PKG_LIBS_PULSEAUDIO pulse-simple pulse pulsecommon-14.2)
set(CONAN_SYSTEM_LIBS_PULSEAUDIO )
set(CONAN_FRAMEWORKS_PULSEAUDIO )
set(CONAN_FRAMEWORKS_FOUND_PULSEAUDIO "")  # Will be filled later
set(CONAN_DEFINES_PULSEAUDIO "-D_REENTRANT")
set(CONAN_BUILD_MODULES_PATHS_PULSEAUDIO )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_PULSEAUDIO "_REENTRANT")

set(CONAN_C_FLAGS_PULSEAUDIO "")
set(CONAN_CXX_FLAGS_PULSEAUDIO "")
set(CONAN_SHARED_LINKER_FLAGS_PULSEAUDIO "")
set(CONAN_EXE_LINKER_FLAGS_PULSEAUDIO "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_PULSEAUDIO_LIST "")
set(CONAN_CXX_FLAGS_PULSEAUDIO_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_PULSEAUDIO_LIST "")
set(CONAN_EXE_LINKER_FLAGS_PULSEAUDIO_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_PULSEAUDIO "${CONAN_FRAMEWORKS_PULSEAUDIO}" "_PULSEAUDIO" "")
# Append to aggregated values variable
set(CONAN_LIBS_PULSEAUDIO ${CONAN_PKG_LIBS_PULSEAUDIO} ${CONAN_SYSTEM_LIBS_PULSEAUDIO} ${CONAN_FRAMEWORKS_FOUND_PULSEAUDIO})


#################
###  FMT
#################
set(CONAN_FMT_ROOT "/home/me/.conan/data/fmt/8.0.1/_/_/package/bb317a1f4f7069078e967719a5c585f83cd078c2")
set(CONAN_INCLUDE_DIRS_FMT "/home/me/.conan/data/fmt/8.0.1/_/_/package/bb317a1f4f7069078e967719a5c585f83cd078c2/include")
set(CONAN_LIB_DIRS_FMT "/home/me/.conan/data/fmt/8.0.1/_/_/package/bb317a1f4f7069078e967719a5c585f83cd078c2/lib")
set(CONAN_BIN_DIRS_FMT )
set(CONAN_RES_DIRS_FMT )
set(CONAN_SRC_DIRS_FMT )
set(CONAN_BUILD_DIRS_FMT "/home/me/.conan/data/fmt/8.0.1/_/_/package/bb317a1f4f7069078e967719a5c585f83cd078c2/")
set(CONAN_FRAMEWORK_DIRS_FMT )
set(CONAN_LIBS_FMT fmt)
set(CONAN_PKG_LIBS_FMT fmt)
set(CONAN_SYSTEM_LIBS_FMT )
set(CONAN_FRAMEWORKS_FMT )
set(CONAN_FRAMEWORKS_FOUND_FMT "")  # Will be filled later
set(CONAN_DEFINES_FMT )
set(CONAN_BUILD_MODULES_PATHS_FMT )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_FMT )

set(CONAN_C_FLAGS_FMT "")
set(CONAN_CXX_FLAGS_FMT "")
set(CONAN_SHARED_LINKER_FLAGS_FMT "")
set(CONAN_EXE_LINKER_FLAGS_FMT "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_FMT_LIST "")
set(CONAN_CXX_FLAGS_FMT_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_FMT_LIST "")
set(CONAN_EXE_LINKER_FLAGS_FMT_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_FMT "${CONAN_FRAMEWORKS_FMT}" "_FMT" "")
# Append to aggregated values variable
set(CONAN_LIBS_FMT ${CONAN_PKG_LIBS_FMT} ${CONAN_SYSTEM_LIBS_FMT} ${CONAN_FRAMEWORKS_FOUND_FMT})


#################
###  IMGUI
#################
set(CONAN_IMGUI_ROOT "/home/me/.conan/data/imgui/1.87/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d")
set(CONAN_INCLUDE_DIRS_IMGUI "/home/me/.conan/data/imgui/1.87/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/include")
set(CONAN_LIB_DIRS_IMGUI "/home/me/.conan/data/imgui/1.87/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/lib")
set(CONAN_BIN_DIRS_IMGUI "/home/me/.conan/data/imgui/1.87/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/bin")
set(CONAN_RES_DIRS_IMGUI "/home/me/.conan/data/imgui/1.87/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/res")
set(CONAN_SRC_DIRS_IMGUI "/home/me/.conan/data/imgui/1.87/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/res/bindings")
set(CONAN_BUILD_DIRS_IMGUI "/home/me/.conan/data/imgui/1.87/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/")
set(CONAN_FRAMEWORK_DIRS_IMGUI )
set(CONAN_LIBS_IMGUI imgui)
set(CONAN_PKG_LIBS_IMGUI imgui)
set(CONAN_SYSTEM_LIBS_IMGUI m)
set(CONAN_FRAMEWORKS_IMGUI )
set(CONAN_FRAMEWORKS_FOUND_IMGUI "")  # Will be filled later
set(CONAN_DEFINES_IMGUI "-DIMGUI_USER_CONFIG=\"imgui_user_config.h\"")
set(CONAN_BUILD_MODULES_PATHS_IMGUI )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_IMGUI "IMGUI_USER_CONFIG=\"imgui_user_config.h\"")

set(CONAN_C_FLAGS_IMGUI "")
set(CONAN_CXX_FLAGS_IMGUI "")
set(CONAN_SHARED_LINKER_FLAGS_IMGUI "")
set(CONAN_EXE_LINKER_FLAGS_IMGUI "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_IMGUI_LIST "")
set(CONAN_CXX_FLAGS_IMGUI_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_IMGUI_LIST "")
set(CONAN_EXE_LINKER_FLAGS_IMGUI_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_IMGUI "${CONAN_FRAMEWORKS_IMGUI}" "_IMGUI" "")
# Append to aggregated values variable
set(CONAN_LIBS_IMGUI ${CONAN_PKG_LIBS_IMGUI} ${CONAN_SYSTEM_LIBS_IMGUI} ${CONAN_FRAMEWORKS_FOUND_IMGUI})


#################
###  OPENJPEG
#################
set(CONAN_OPENJPEG_ROOT "/home/me/.conan/data/openjpeg/2.4.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_OPENJPEG "/home/me/.conan/data/openjpeg/2.4.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/openjpeg/2.4.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/openjpeg-2.4")
set(CONAN_LIB_DIRS_OPENJPEG "/home/me/.conan/data/openjpeg/2.4.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_OPENJPEG )
set(CONAN_RES_DIRS_OPENJPEG )
set(CONAN_SRC_DIRS_OPENJPEG )
set(CONAN_BUILD_DIRS_OPENJPEG "/home/me/.conan/data/openjpeg/2.4.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_OPENJPEG )
set(CONAN_LIBS_OPENJPEG openjp2)
set(CONAN_PKG_LIBS_OPENJPEG openjp2)
set(CONAN_SYSTEM_LIBS_OPENJPEG pthread m)
set(CONAN_FRAMEWORKS_OPENJPEG )
set(CONAN_FRAMEWORKS_FOUND_OPENJPEG "")  # Will be filled later
set(CONAN_DEFINES_OPENJPEG )
set(CONAN_BUILD_MODULES_PATHS_OPENJPEG )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_OPENJPEG )

set(CONAN_C_FLAGS_OPENJPEG "")
set(CONAN_CXX_FLAGS_OPENJPEG "")
set(CONAN_SHARED_LINKER_FLAGS_OPENJPEG "")
set(CONAN_EXE_LINKER_FLAGS_OPENJPEG "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_OPENJPEG_LIST "")
set(CONAN_CXX_FLAGS_OPENJPEG_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_OPENJPEG_LIST "")
set(CONAN_EXE_LINKER_FLAGS_OPENJPEG_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_OPENJPEG "${CONAN_FRAMEWORKS_OPENJPEG}" "_OPENJPEG" "")
# Append to aggregated values variable
set(CONAN_LIBS_OPENJPEG ${CONAN_PKG_LIBS_OPENJPEG} ${CONAN_SYSTEM_LIBS_OPENJPEG} ${CONAN_FRAMEWORKS_FOUND_OPENJPEG})


#################
###  OPENEXR
#################
set(CONAN_OPENEXR_ROOT "/home/me/.conan/data/openexr/2.5.7/_/_/package/1125ca08946d3f74d1579e093edb507405c02a91")
set(CONAN_INCLUDE_DIRS_OPENEXR "/home/me/.conan/data/openexr/2.5.7/_/_/package/1125ca08946d3f74d1579e093edb507405c02a91/include"
			"/home/me/.conan/data/openexr/2.5.7/_/_/package/1125ca08946d3f74d1579e093edb507405c02a91/include/OpenEXR")
set(CONAN_LIB_DIRS_OPENEXR "/home/me/.conan/data/openexr/2.5.7/_/_/package/1125ca08946d3f74d1579e093edb507405c02a91/lib")
set(CONAN_BIN_DIRS_OPENEXR )
set(CONAN_RES_DIRS_OPENEXR )
set(CONAN_SRC_DIRS_OPENEXR )
set(CONAN_BUILD_DIRS_OPENEXR "/home/me/.conan/data/openexr/2.5.7/_/_/package/1125ca08946d3f74d1579e093edb507405c02a91/")
set(CONAN_FRAMEWORK_DIRS_OPENEXR )
set(CONAN_LIBS_OPENEXR IlmImfUtil-2_5 IlmImf-2_5 Imath-2_5 Half-2_5 IexMath-2_5 IlmThread-2_5 Iex-2_5)
set(CONAN_PKG_LIBS_OPENEXR IlmImfUtil-2_5 IlmImf-2_5 Imath-2_5 Half-2_5 IexMath-2_5 IlmThread-2_5 Iex-2_5)
set(CONAN_SYSTEM_LIBS_OPENEXR stdc++ pthread)
set(CONAN_FRAMEWORKS_OPENEXR )
set(CONAN_FRAMEWORKS_FOUND_OPENEXR "")  # Will be filled later
set(CONAN_DEFINES_OPENEXR )
set(CONAN_BUILD_MODULES_PATHS_OPENEXR )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_OPENEXR )

set(CONAN_C_FLAGS_OPENEXR "")
set(CONAN_CXX_FLAGS_OPENEXR "")
set(CONAN_SHARED_LINKER_FLAGS_OPENEXR "")
set(CONAN_EXE_LINKER_FLAGS_OPENEXR "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_OPENEXR_LIST "")
set(CONAN_CXX_FLAGS_OPENEXR_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_OPENEXR_LIST "")
set(CONAN_EXE_LINKER_FLAGS_OPENEXR_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_OPENEXR "${CONAN_FRAMEWORKS_OPENEXR}" "_OPENEXR" "")
# Append to aggregated values variable
set(CONAN_LIBS_OPENEXR ${CONAN_PKG_LIBS_OPENEXR} ${CONAN_SYSTEM_LIBS_OPENEXR} ${CONAN_FRAMEWORKS_FOUND_OPENEXR})


#################
###  LIBRAW
#################
set(CONAN_LIBRAW_ROOT "/home/me/.conan/data/libraw/0.20.2/_/_/package/2fa4e3a2c714d892f0f5d0f5ebe7d148372a2891")
set(CONAN_INCLUDE_DIRS_LIBRAW "/home/me/.conan/data/libraw/0.20.2/_/_/package/2fa4e3a2c714d892f0f5d0f5ebe7d148372a2891/include")
set(CONAN_LIB_DIRS_LIBRAW "/home/me/.conan/data/libraw/0.20.2/_/_/package/2fa4e3a2c714d892f0f5d0f5ebe7d148372a2891/lib")
set(CONAN_BIN_DIRS_LIBRAW )
set(CONAN_RES_DIRS_LIBRAW )
set(CONAN_SRC_DIRS_LIBRAW )
set(CONAN_BUILD_DIRS_LIBRAW "/home/me/.conan/data/libraw/0.20.2/_/_/package/2fa4e3a2c714d892f0f5d0f5ebe7d148372a2891/")
set(CONAN_FRAMEWORK_DIRS_LIBRAW )
set(CONAN_LIBS_LIBRAW raw)
set(CONAN_PKG_LIBS_LIBRAW raw)
set(CONAN_SYSTEM_LIBS_LIBRAW )
set(CONAN_FRAMEWORKS_LIBRAW )
set(CONAN_FRAMEWORKS_FOUND_LIBRAW "")  # Will be filled later
set(CONAN_DEFINES_LIBRAW "-DLIBRAW_NODLL")
set(CONAN_BUILD_MODULES_PATHS_LIBRAW )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBRAW "LIBRAW_NODLL")

set(CONAN_C_FLAGS_LIBRAW "")
set(CONAN_CXX_FLAGS_LIBRAW "")
set(CONAN_SHARED_LINKER_FLAGS_LIBRAW "")
set(CONAN_EXE_LINKER_FLAGS_LIBRAW "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBRAW_LIST "")
set(CONAN_CXX_FLAGS_LIBRAW_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBRAW_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBRAW_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBRAW "${CONAN_FRAMEWORKS_LIBRAW}" "_LIBRAW" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBRAW ${CONAN_PKG_LIBS_LIBRAW} ${CONAN_SYSTEM_LIBS_LIBRAW} ${CONAN_FRAMEWORKS_FOUND_LIBRAW})


#################
###  JXRLIB
#################
set(CONAN_JXRLIB_ROOT "/home/me/.conan/data/jxrlib/cci.20170615/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_JXRLIB "/home/me/.conan/data/jxrlib/cci.20170615/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include")
set(CONAN_LIB_DIRS_JXRLIB "/home/me/.conan/data/jxrlib/cci.20170615/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_JXRLIB )
set(CONAN_RES_DIRS_JXRLIB )
set(CONAN_SRC_DIRS_JXRLIB )
set(CONAN_BUILD_DIRS_JXRLIB "/home/me/.conan/data/jxrlib/cci.20170615/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_JXRLIB )
set(CONAN_LIBS_JXRLIB jxrglue jpegxr)
set(CONAN_PKG_LIBS_JXRLIB jxrglue jpegxr)
set(CONAN_SYSTEM_LIBS_JXRLIB m)
set(CONAN_FRAMEWORKS_JXRLIB )
set(CONAN_FRAMEWORKS_FOUND_JXRLIB "")  # Will be filled later
set(CONAN_DEFINES_JXRLIB "-D__ANSI__")
set(CONAN_BUILD_MODULES_PATHS_JXRLIB )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_JXRLIB "__ANSI__")

set(CONAN_C_FLAGS_JXRLIB "")
set(CONAN_CXX_FLAGS_JXRLIB "")
set(CONAN_SHARED_LINKER_FLAGS_JXRLIB "")
set(CONAN_EXE_LINKER_FLAGS_JXRLIB "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_JXRLIB_LIST "")
set(CONAN_CXX_FLAGS_JXRLIB_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_JXRLIB_LIST "")
set(CONAN_EXE_LINKER_FLAGS_JXRLIB_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_JXRLIB "${CONAN_FRAMEWORKS_JXRLIB}" "_JXRLIB" "")
# Append to aggregated values variable
set(CONAN_LIBS_JXRLIB ${CONAN_PKG_LIBS_JXRLIB} ${CONAN_SYSTEM_LIBS_JXRLIB} ${CONAN_FRAMEWORKS_FOUND_JXRLIB})


#################
###  LIBALSA
#################
set(CONAN_LIBALSA_ROOT "/home/me/.conan/data/libalsa/1.2.5.1/_/_/package/51e96d1346424f5ef647616231906873cd225eb3")
set(CONAN_INCLUDE_DIRS_LIBALSA "/home/me/.conan/data/libalsa/1.2.5.1/_/_/package/51e96d1346424f5ef647616231906873cd225eb3/include")
set(CONAN_LIB_DIRS_LIBALSA "/home/me/.conan/data/libalsa/1.2.5.1/_/_/package/51e96d1346424f5ef647616231906873cd225eb3/lib")
set(CONAN_BIN_DIRS_LIBALSA "/home/me/.conan/data/libalsa/1.2.5.1/_/_/package/51e96d1346424f5ef647616231906873cd225eb3/bin")
set(CONAN_RES_DIRS_LIBALSA "/home/me/.conan/data/libalsa/1.2.5.1/_/_/package/51e96d1346424f5ef647616231906873cd225eb3/res")
set(CONAN_SRC_DIRS_LIBALSA )
set(CONAN_BUILD_DIRS_LIBALSA "/home/me/.conan/data/libalsa/1.2.5.1/_/_/package/51e96d1346424f5ef647616231906873cd225eb3/")
set(CONAN_FRAMEWORK_DIRS_LIBALSA )
set(CONAN_LIBS_LIBALSA asound)
set(CONAN_PKG_LIBS_LIBALSA asound)
set(CONAN_SYSTEM_LIBS_LIBALSA dl m rt pthread)
set(CONAN_FRAMEWORKS_LIBALSA )
set(CONAN_FRAMEWORKS_FOUND_LIBALSA "")  # Will be filled later
set(CONAN_DEFINES_LIBALSA )
set(CONAN_BUILD_MODULES_PATHS_LIBALSA )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBALSA )

set(CONAN_C_FLAGS_LIBALSA "")
set(CONAN_CXX_FLAGS_LIBALSA "")
set(CONAN_SHARED_LINKER_FLAGS_LIBALSA "")
set(CONAN_EXE_LINKER_FLAGS_LIBALSA "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBALSA_LIST "")
set(CONAN_CXX_FLAGS_LIBALSA_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBALSA_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBALSA_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBALSA "${CONAN_FRAMEWORKS_LIBALSA}" "_LIBALSA" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBALSA ${CONAN_PKG_LIBS_LIBALSA} ${CONAN_SYSTEM_LIBS_LIBALSA} ${CONAN_FRAMEWORKS_FOUND_LIBALSA})


#################
###  OPENSSL
#################
set(CONAN_OPENSSL_ROOT "/home/me/.conan/data/openssl/1.1.1m/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_OPENSSL "/home/me/.conan/data/openssl/1.1.1m/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include")
set(CONAN_LIB_DIRS_OPENSSL "/home/me/.conan/data/openssl/1.1.1m/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_OPENSSL "/home/me/.conan/data/openssl/1.1.1m/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/bin")
set(CONAN_RES_DIRS_OPENSSL )
set(CONAN_SRC_DIRS_OPENSSL )
set(CONAN_BUILD_DIRS_OPENSSL "/home/me/.conan/data/openssl/1.1.1m/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_OPENSSL )
set(CONAN_LIBS_OPENSSL ssl crypto)
set(CONAN_PKG_LIBS_OPENSSL ssl crypto)
set(CONAN_SYSTEM_LIBS_OPENSSL dl pthread rt)
set(CONAN_FRAMEWORKS_OPENSSL )
set(CONAN_FRAMEWORKS_FOUND_OPENSSL "")  # Will be filled later
set(CONAN_DEFINES_OPENSSL )
set(CONAN_BUILD_MODULES_PATHS_OPENSSL )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_OPENSSL )

set(CONAN_C_FLAGS_OPENSSL "")
set(CONAN_CXX_FLAGS_OPENSSL "")
set(CONAN_SHARED_LINKER_FLAGS_OPENSSL "")
set(CONAN_EXE_LINKER_FLAGS_OPENSSL "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_OPENSSL_LIST "")
set(CONAN_CXX_FLAGS_OPENSSL_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_OPENSSL_LIST "")
set(CONAN_EXE_LINKER_FLAGS_OPENSSL_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_OPENSSL "${CONAN_FRAMEWORKS_OPENSSL}" "_OPENSSL" "")
# Append to aggregated values variable
set(CONAN_LIBS_OPENSSL ${CONAN_PKG_LIBS_OPENSSL} ${CONAN_SYSTEM_LIBS_OPENSSL} ${CONAN_FRAMEWORKS_FOUND_OPENSSL})


#################
###  GDK-PIXBUF
#################
set(CONAN_GDK-PIXBUF_ROOT "/home/me/.conan/data/gdk-pixbuf/2.42.4/_/_/package/a7f9c55d5c7c441d0573807dbac8fd4b956e5b65")
set(CONAN_INCLUDE_DIRS_GDK-PIXBUF "/home/me/.conan/data/gdk-pixbuf/2.42.4/_/_/package/a7f9c55d5c7c441d0573807dbac8fd4b956e5b65/include/gdk-pixbuf-2.0")
set(CONAN_LIB_DIRS_GDK-PIXBUF "/home/me/.conan/data/gdk-pixbuf/2.42.4/_/_/package/a7f9c55d5c7c441d0573807dbac8fd4b956e5b65/lib")
set(CONAN_BIN_DIRS_GDK-PIXBUF "/home/me/.conan/data/gdk-pixbuf/2.42.4/_/_/package/a7f9c55d5c7c441d0573807dbac8fd4b956e5b65/bin")
set(CONAN_RES_DIRS_GDK-PIXBUF )
set(CONAN_SRC_DIRS_GDK-PIXBUF )
set(CONAN_BUILD_DIRS_GDK-PIXBUF "/home/me/.conan/data/gdk-pixbuf/2.42.4/_/_/package/a7f9c55d5c7c441d0573807dbac8fd4b956e5b65/")
set(CONAN_FRAMEWORK_DIRS_GDK-PIXBUF )
set(CONAN_LIBS_GDK-PIXBUF gdk_pixbuf-2.0)
set(CONAN_PKG_LIBS_GDK-PIXBUF gdk_pixbuf-2.0)
set(CONAN_SYSTEM_LIBS_GDK-PIXBUF m)
set(CONAN_FRAMEWORKS_GDK-PIXBUF )
set(CONAN_FRAMEWORKS_FOUND_GDK-PIXBUF "")  # Will be filled later
set(CONAN_DEFINES_GDK-PIXBUF "-DGDK_PIXBUF_STATIC_COMPILATION")
set(CONAN_BUILD_MODULES_PATHS_GDK-PIXBUF )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_GDK-PIXBUF "GDK_PIXBUF_STATIC_COMPILATION")

set(CONAN_C_FLAGS_GDK-PIXBUF "")
set(CONAN_CXX_FLAGS_GDK-PIXBUF "")
set(CONAN_SHARED_LINKER_FLAGS_GDK-PIXBUF "")
set(CONAN_EXE_LINKER_FLAGS_GDK-PIXBUF "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_GDK-PIXBUF_LIST "")
set(CONAN_CXX_FLAGS_GDK-PIXBUF_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_GDK-PIXBUF_LIST "")
set(CONAN_EXE_LINKER_FLAGS_GDK-PIXBUF_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_GDK-PIXBUF "${CONAN_FRAMEWORKS_GDK-PIXBUF}" "_GDK-PIXBUF" "")
# Append to aggregated values variable
set(CONAN_LIBS_GDK-PIXBUF ${CONAN_PKG_LIBS_GDK-PIXBUF} ${CONAN_SYSTEM_LIBS_GDK-PIXBUF} ${CONAN_FRAMEWORKS_FOUND_GDK-PIXBUF})


#################
###  AT-SPI2-ATK
#################
set(CONAN_AT-SPI2-ATK_ROOT "/home/me/.conan/data/at-spi2-atk/2.38.0/_/_/package/39c8c4af65231dbd723a3c5296e74e58dfae3388")
set(CONAN_INCLUDE_DIRS_AT-SPI2-ATK "/home/me/.conan/data/at-spi2-atk/2.38.0/_/_/package/39c8c4af65231dbd723a3c5296e74e58dfae3388/include/at-spi2-atk/2.0")
set(CONAN_LIB_DIRS_AT-SPI2-ATK "/home/me/.conan/data/at-spi2-atk/2.38.0/_/_/package/39c8c4af65231dbd723a3c5296e74e58dfae3388/lib")
set(CONAN_BIN_DIRS_AT-SPI2-ATK )
set(CONAN_RES_DIRS_AT-SPI2-ATK )
set(CONAN_SRC_DIRS_AT-SPI2-ATK )
set(CONAN_BUILD_DIRS_AT-SPI2-ATK "/home/me/.conan/data/at-spi2-atk/2.38.0/_/_/package/39c8c4af65231dbd723a3c5296e74e58dfae3388/")
set(CONAN_FRAMEWORK_DIRS_AT-SPI2-ATK )
set(CONAN_LIBS_AT-SPI2-ATK atk-bridge-2.0)
set(CONAN_PKG_LIBS_AT-SPI2-ATK atk-bridge-2.0)
set(CONAN_SYSTEM_LIBS_AT-SPI2-ATK )
set(CONAN_FRAMEWORKS_AT-SPI2-ATK )
set(CONAN_FRAMEWORKS_FOUND_AT-SPI2-ATK "")  # Will be filled later
set(CONAN_DEFINES_AT-SPI2-ATK )
set(CONAN_BUILD_MODULES_PATHS_AT-SPI2-ATK )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_AT-SPI2-ATK )

set(CONAN_C_FLAGS_AT-SPI2-ATK "")
set(CONAN_CXX_FLAGS_AT-SPI2-ATK "")
set(CONAN_SHARED_LINKER_FLAGS_AT-SPI2-ATK "")
set(CONAN_EXE_LINKER_FLAGS_AT-SPI2-ATK "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_AT-SPI2-ATK_LIST "")
set(CONAN_CXX_FLAGS_AT-SPI2-ATK_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_AT-SPI2-ATK_LIST "")
set(CONAN_EXE_LINKER_FLAGS_AT-SPI2-ATK_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_AT-SPI2-ATK "${CONAN_FRAMEWORKS_AT-SPI2-ATK}" "_AT-SPI2-ATK" "")
# Append to aggregated values variable
set(CONAN_LIBS_AT-SPI2-ATK ${CONAN_PKG_LIBS_AT-SPI2-ATK} ${CONAN_SYSTEM_LIBS_AT-SPI2-ATK} ${CONAN_FRAMEWORKS_FOUND_AT-SPI2-ATK})


#################
###  LIBEPOXY
#################
set(CONAN_LIBEPOXY_ROOT "/home/me/.conan/data/libepoxy/1.5.9/_/_/package/41e9f4d599573e8c930aa096f36cf30cacc41823")
set(CONAN_INCLUDE_DIRS_LIBEPOXY "/home/me/.conan/data/libepoxy/1.5.9/_/_/package/41e9f4d599573e8c930aa096f36cf30cacc41823/include")
set(CONAN_LIB_DIRS_LIBEPOXY "/home/me/.conan/data/libepoxy/1.5.9/_/_/package/41e9f4d599573e8c930aa096f36cf30cacc41823/lib")
set(CONAN_BIN_DIRS_LIBEPOXY )
set(CONAN_RES_DIRS_LIBEPOXY )
set(CONAN_SRC_DIRS_LIBEPOXY )
set(CONAN_BUILD_DIRS_LIBEPOXY "/home/me/.conan/data/libepoxy/1.5.9/_/_/package/41e9f4d599573e8c930aa096f36cf30cacc41823/")
set(CONAN_FRAMEWORK_DIRS_LIBEPOXY )
set(CONAN_LIBS_LIBEPOXY epoxy)
set(CONAN_PKG_LIBS_LIBEPOXY epoxy)
set(CONAN_SYSTEM_LIBS_LIBEPOXY dl)
set(CONAN_FRAMEWORKS_LIBEPOXY )
set(CONAN_FRAMEWORKS_FOUND_LIBEPOXY "")  # Will be filled later
set(CONAN_DEFINES_LIBEPOXY )
set(CONAN_BUILD_MODULES_PATHS_LIBEPOXY )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBEPOXY )

set(CONAN_C_FLAGS_LIBEPOXY "")
set(CONAN_CXX_FLAGS_LIBEPOXY "")
set(CONAN_SHARED_LINKER_FLAGS_LIBEPOXY "")
set(CONAN_EXE_LINKER_FLAGS_LIBEPOXY "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBEPOXY_LIST "")
set(CONAN_CXX_FLAGS_LIBEPOXY_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBEPOXY_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBEPOXY_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBEPOXY "${CONAN_FRAMEWORKS_LIBEPOXY}" "_LIBEPOXY" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBEPOXY ${CONAN_PKG_LIBS_LIBEPOXY} ${CONAN_SYSTEM_LIBS_LIBEPOXY} ${CONAN_FRAMEWORKS_FOUND_LIBEPOXY})


#################
###  PANGO
#################
set(CONAN_PANGO_ROOT "/home/me/.conan/data/pango/1.49.1/_/_/package/5c40613d33c17f067d2023a7c1adcbe072a86946")
set(CONAN_INCLUDE_DIRS_PANGO "/home/me/.conan/data/pango/1.49.1/_/_/package/5c40613d33c17f067d2023a7c1adcbe072a86946/include"
			"/home/me/.conan/data/pango/1.49.1/_/_/package/5c40613d33c17f067d2023a7c1adcbe072a86946/include/pango-1.0")
set(CONAN_LIB_DIRS_PANGO "/home/me/.conan/data/pango/1.49.1/_/_/package/5c40613d33c17f067d2023a7c1adcbe072a86946/lib")
set(CONAN_BIN_DIRS_PANGO )
set(CONAN_RES_DIRS_PANGO )
set(CONAN_SRC_DIRS_PANGO )
set(CONAN_BUILD_DIRS_PANGO "/home/me/.conan/data/pango/1.49.1/_/_/package/5c40613d33c17f067d2023a7c1adcbe072a86946/")
set(CONAN_FRAMEWORK_DIRS_PANGO )
set(CONAN_LIBS_PANGO pangoxft-1.0 pangocairo-1.0 pangoft2-1.0 pango-1.0)
set(CONAN_PKG_LIBS_PANGO pangoxft-1.0 pangocairo-1.0 pangoft2-1.0 pango-1.0)
set(CONAN_SYSTEM_LIBS_PANGO m)
set(CONAN_FRAMEWORKS_PANGO )
set(CONAN_FRAMEWORKS_FOUND_PANGO "")  # Will be filled later
set(CONAN_DEFINES_PANGO )
set(CONAN_BUILD_MODULES_PATHS_PANGO )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_PANGO )

set(CONAN_C_FLAGS_PANGO "")
set(CONAN_CXX_FLAGS_PANGO "")
set(CONAN_SHARED_LINKER_FLAGS_PANGO "")
set(CONAN_EXE_LINKER_FLAGS_PANGO "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_PANGO_LIST "")
set(CONAN_CXX_FLAGS_PANGO_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_PANGO_LIST "")
set(CONAN_EXE_LINKER_FLAGS_PANGO_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_PANGO "${CONAN_FRAMEWORKS_PANGO}" "_PANGO" "")
# Append to aggregated values variable
set(CONAN_LIBS_PANGO ${CONAN_PKG_LIBS_PANGO} ${CONAN_SYSTEM_LIBS_PANGO} ${CONAN_FRAMEWORKS_FOUND_PANGO})


#################
###  LIBSNDFILE
#################
set(CONAN_LIBSNDFILE_ROOT "/home/me/.conan/data/libsndfile/1.0.31/_/_/package/a510e4d90c1a5085d4dd59083f793052fc083872")
set(CONAN_INCLUDE_DIRS_LIBSNDFILE "/home/me/.conan/data/libsndfile/1.0.31/_/_/package/a510e4d90c1a5085d4dd59083f793052fc083872/include")
set(CONAN_LIB_DIRS_LIBSNDFILE "/home/me/.conan/data/libsndfile/1.0.31/_/_/package/a510e4d90c1a5085d4dd59083f793052fc083872/lib")
set(CONAN_BIN_DIRS_LIBSNDFILE "/home/me/.conan/data/libsndfile/1.0.31/_/_/package/a510e4d90c1a5085d4dd59083f793052fc083872/bin")
set(CONAN_RES_DIRS_LIBSNDFILE )
set(CONAN_SRC_DIRS_LIBSNDFILE )
set(CONAN_BUILD_DIRS_LIBSNDFILE "/home/me/.conan/data/libsndfile/1.0.31/_/_/package/a510e4d90c1a5085d4dd59083f793052fc083872/")
set(CONAN_FRAMEWORK_DIRS_LIBSNDFILE )
set(CONAN_LIBS_LIBSNDFILE sndfile)
set(CONAN_PKG_LIBS_LIBSNDFILE sndfile)
set(CONAN_SYSTEM_LIBS_LIBSNDFILE m dl pthread rt)
set(CONAN_FRAMEWORKS_LIBSNDFILE )
set(CONAN_FRAMEWORKS_FOUND_LIBSNDFILE "")  # Will be filled later
set(CONAN_DEFINES_LIBSNDFILE )
set(CONAN_BUILD_MODULES_PATHS_LIBSNDFILE )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBSNDFILE )

set(CONAN_C_FLAGS_LIBSNDFILE "")
set(CONAN_CXX_FLAGS_LIBSNDFILE "")
set(CONAN_SHARED_LINKER_FLAGS_LIBSNDFILE "")
set(CONAN_EXE_LINKER_FLAGS_LIBSNDFILE "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBSNDFILE_LIST "")
set(CONAN_CXX_FLAGS_LIBSNDFILE_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBSNDFILE_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBSNDFILE_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBSNDFILE "${CONAN_FRAMEWORKS_LIBSNDFILE}" "_LIBSNDFILE" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBSNDFILE ${CONAN_PKG_LIBS_LIBSNDFILE} ${CONAN_SYSTEM_LIBS_LIBSNDFILE} ${CONAN_FRAMEWORKS_FOUND_LIBSNDFILE})


#################
###  LIBCAP
#################
set(CONAN_LIBCAP_ROOT "/home/me/.conan/data/libcap/2.62/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_LIBCAP "/home/me/.conan/data/libcap/2.62/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include")
set(CONAN_LIB_DIRS_LIBCAP "/home/me/.conan/data/libcap/2.62/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_LIBCAP )
set(CONAN_RES_DIRS_LIBCAP )
set(CONAN_SRC_DIRS_LIBCAP )
set(CONAN_BUILD_DIRS_LIBCAP "/home/me/.conan/data/libcap/2.62/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_LIBCAP )
set(CONAN_LIBS_LIBCAP cap)
set(CONAN_PKG_LIBS_LIBCAP cap)
set(CONAN_SYSTEM_LIBS_LIBCAP )
set(CONAN_FRAMEWORKS_LIBCAP )
set(CONAN_FRAMEWORKS_FOUND_LIBCAP "")  # Will be filled later
set(CONAN_DEFINES_LIBCAP )
set(CONAN_BUILD_MODULES_PATHS_LIBCAP )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBCAP )

set(CONAN_C_FLAGS_LIBCAP "")
set(CONAN_CXX_FLAGS_LIBCAP "")
set(CONAN_SHARED_LINKER_FLAGS_LIBCAP "")
set(CONAN_EXE_LINKER_FLAGS_LIBCAP "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBCAP_LIST "")
set(CONAN_CXX_FLAGS_LIBCAP_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBCAP_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBCAP_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBCAP "${CONAN_FRAMEWORKS_LIBCAP}" "_LIBCAP" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBCAP ${CONAN_PKG_LIBS_LIBCAP} ${CONAN_SYSTEM_LIBS_LIBCAP} ${CONAN_FRAMEWORKS_FOUND_LIBCAP})


#################
###  LCMS
#################
set(CONAN_LCMS_ROOT "/home/me/.conan/data/lcms/2.12/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_LCMS "/home/me/.conan/data/lcms/2.12/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include")
set(CONAN_LIB_DIRS_LCMS "/home/me/.conan/data/lcms/2.12/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_LCMS )
set(CONAN_RES_DIRS_LCMS )
set(CONAN_SRC_DIRS_LCMS )
set(CONAN_BUILD_DIRS_LCMS "/home/me/.conan/data/lcms/2.12/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_LCMS )
set(CONAN_LIBS_LCMS lcms2)
set(CONAN_PKG_LIBS_LCMS lcms2)
set(CONAN_SYSTEM_LIBS_LCMS m)
set(CONAN_FRAMEWORKS_LCMS )
set(CONAN_FRAMEWORKS_FOUND_LCMS "")  # Will be filled later
set(CONAN_DEFINES_LCMS )
set(CONAN_BUILD_MODULES_PATHS_LCMS )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LCMS )

set(CONAN_C_FLAGS_LCMS "")
set(CONAN_CXX_FLAGS_LCMS "")
set(CONAN_SHARED_LINKER_FLAGS_LCMS "")
set(CONAN_EXE_LINKER_FLAGS_LCMS "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LCMS_LIST "")
set(CONAN_CXX_FLAGS_LCMS_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LCMS_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LCMS_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LCMS "${CONAN_FRAMEWORKS_LCMS}" "_LCMS" "")
# Append to aggregated values variable
set(CONAN_LIBS_LCMS ${CONAN_PKG_LIBS_LCMS} ${CONAN_SYSTEM_LIBS_LCMS} ${CONAN_FRAMEWORKS_FOUND_LCMS})


#################
###  JASPER
#################
set(CONAN_JASPER_ROOT "/home/me/.conan/data/jasper/2.0.33/_/_/package/6de8eee19e177251528129fa9bdc05bbfce2fea2")
set(CONAN_INCLUDE_DIRS_JASPER "/home/me/.conan/data/jasper/2.0.33/_/_/package/6de8eee19e177251528129fa9bdc05bbfce2fea2/include")
set(CONAN_LIB_DIRS_JASPER "/home/me/.conan/data/jasper/2.0.33/_/_/package/6de8eee19e177251528129fa9bdc05bbfce2fea2/lib")
set(CONAN_BIN_DIRS_JASPER )
set(CONAN_RES_DIRS_JASPER )
set(CONAN_SRC_DIRS_JASPER )
set(CONAN_BUILD_DIRS_JASPER "/home/me/.conan/data/jasper/2.0.33/_/_/package/6de8eee19e177251528129fa9bdc05bbfce2fea2/")
set(CONAN_FRAMEWORK_DIRS_JASPER )
set(CONAN_LIBS_JASPER jasper)
set(CONAN_PKG_LIBS_JASPER jasper)
set(CONAN_SYSTEM_LIBS_JASPER m)
set(CONAN_FRAMEWORKS_JASPER )
set(CONAN_FRAMEWORKS_FOUND_JASPER "")  # Will be filled later
set(CONAN_DEFINES_JASPER )
set(CONAN_BUILD_MODULES_PATHS_JASPER )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_JASPER )

set(CONAN_C_FLAGS_JASPER "")
set(CONAN_CXX_FLAGS_JASPER "")
set(CONAN_SHARED_LINKER_FLAGS_JASPER "")
set(CONAN_EXE_LINKER_FLAGS_JASPER "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_JASPER_LIST "")
set(CONAN_CXX_FLAGS_JASPER_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_JASPER_LIST "")
set(CONAN_EXE_LINKER_FLAGS_JASPER_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_JASPER "${CONAN_FRAMEWORKS_JASPER}" "_JASPER" "")
# Append to aggregated values variable
set(CONAN_LIBS_JASPER ${CONAN_PKG_LIBS_JASPER} ${CONAN_SYSTEM_LIBS_JASPER} ${CONAN_FRAMEWORKS_FOUND_JASPER})


#################
###  LIBTIFF
#################
set(CONAN_LIBTIFF_ROOT "/home/me/.conan/data/libtiff/4.3.0/_/_/package/f82ef25da4e9f661f118d3aa44ad6c1bfef0bc79")
set(CONAN_INCLUDE_DIRS_LIBTIFF "/home/me/.conan/data/libtiff/4.3.0/_/_/package/f82ef25da4e9f661f118d3aa44ad6c1bfef0bc79/include")
set(CONAN_LIB_DIRS_LIBTIFF "/home/me/.conan/data/libtiff/4.3.0/_/_/package/f82ef25da4e9f661f118d3aa44ad6c1bfef0bc79/lib")
set(CONAN_BIN_DIRS_LIBTIFF )
set(CONAN_RES_DIRS_LIBTIFF )
set(CONAN_SRC_DIRS_LIBTIFF )
set(CONAN_BUILD_DIRS_LIBTIFF "/home/me/.conan/data/libtiff/4.3.0/_/_/package/f82ef25da4e9f661f118d3aa44ad6c1bfef0bc79/")
set(CONAN_FRAMEWORK_DIRS_LIBTIFF )
set(CONAN_LIBS_LIBTIFF tiffxx tiff)
set(CONAN_PKG_LIBS_LIBTIFF tiffxx tiff)
set(CONAN_SYSTEM_LIBS_LIBTIFF m)
set(CONAN_FRAMEWORKS_LIBTIFF )
set(CONAN_FRAMEWORKS_FOUND_LIBTIFF "")  # Will be filled later
set(CONAN_DEFINES_LIBTIFF )
set(CONAN_BUILD_MODULES_PATHS_LIBTIFF )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBTIFF )

set(CONAN_C_FLAGS_LIBTIFF "")
set(CONAN_CXX_FLAGS_LIBTIFF "")
set(CONAN_SHARED_LINKER_FLAGS_LIBTIFF "")
set(CONAN_EXE_LINKER_FLAGS_LIBTIFF "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBTIFF_LIST "")
set(CONAN_CXX_FLAGS_LIBTIFF_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBTIFF_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBTIFF_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBTIFF "${CONAN_FRAMEWORKS_LIBTIFF}" "_LIBTIFF" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBTIFF ${CONAN_PKG_LIBS_LIBTIFF} ${CONAN_SYSTEM_LIBS_LIBTIFF} ${CONAN_FRAMEWORKS_FOUND_LIBTIFF})


#################
###  FLAC
#################
set(CONAN_FLAC_ROOT "/home/me/.conan/data/flac/1.3.3/_/_/package/f73e61b9ac5c8f3043ccfbe374875bbd9a7376b1")
set(CONAN_INCLUDE_DIRS_FLAC "/home/me/.conan/data/flac/1.3.3/_/_/package/f73e61b9ac5c8f3043ccfbe374875bbd9a7376b1/include")
set(CONAN_LIB_DIRS_FLAC "/home/me/.conan/data/flac/1.3.3/_/_/package/f73e61b9ac5c8f3043ccfbe374875bbd9a7376b1/lib")
set(CONAN_BIN_DIRS_FLAC "/home/me/.conan/data/flac/1.3.3/_/_/package/f73e61b9ac5c8f3043ccfbe374875bbd9a7376b1/bin")
set(CONAN_RES_DIRS_FLAC )
set(CONAN_SRC_DIRS_FLAC )
set(CONAN_BUILD_DIRS_FLAC "/home/me/.conan/data/flac/1.3.3/_/_/package/f73e61b9ac5c8f3043ccfbe374875bbd9a7376b1/")
set(CONAN_FRAMEWORK_DIRS_FLAC )
set(CONAN_LIBS_FLAC FLAC++ FLAC)
set(CONAN_PKG_LIBS_FLAC FLAC++ FLAC)
set(CONAN_SYSTEM_LIBS_FLAC m)
set(CONAN_FRAMEWORKS_FLAC )
set(CONAN_FRAMEWORKS_FOUND_FLAC "")  # Will be filled later
set(CONAN_DEFINES_FLAC "-DFLAC__NO_DLL")
set(CONAN_BUILD_MODULES_PATHS_FLAC )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_FLAC "FLAC__NO_DLL")

set(CONAN_C_FLAGS_FLAC "")
set(CONAN_CXX_FLAGS_FLAC "")
set(CONAN_SHARED_LINKER_FLAGS_FLAC "")
set(CONAN_EXE_LINKER_FLAGS_FLAC "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_FLAC_LIST "")
set(CONAN_CXX_FLAGS_FLAC_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_FLAC_LIST "")
set(CONAN_EXE_LINKER_FLAGS_FLAC_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_FLAC "${CONAN_FRAMEWORKS_FLAC}" "_FLAC" "")
# Append to aggregated values variable
set(CONAN_LIBS_FLAC ${CONAN_PKG_LIBS_FLAC} ${CONAN_SYSTEM_LIBS_FLAC} ${CONAN_FRAMEWORKS_FOUND_FLAC})


#################
###  VORBIS
#################
set(CONAN_VORBIS_ROOT "/home/me/.conan/data/vorbis/1.3.7/_/_/package/6e4bc3ab815736fa7c637f569f101e1193ddb5da")
set(CONAN_INCLUDE_DIRS_VORBIS "/home/me/.conan/data/vorbis/1.3.7/_/_/package/6e4bc3ab815736fa7c637f569f101e1193ddb5da/include")
set(CONAN_LIB_DIRS_VORBIS "/home/me/.conan/data/vorbis/1.3.7/_/_/package/6e4bc3ab815736fa7c637f569f101e1193ddb5da/lib")
set(CONAN_BIN_DIRS_VORBIS )
set(CONAN_RES_DIRS_VORBIS )
set(CONAN_SRC_DIRS_VORBIS )
set(CONAN_BUILD_DIRS_VORBIS "/home/me/.conan/data/vorbis/1.3.7/_/_/package/6e4bc3ab815736fa7c637f569f101e1193ddb5da/")
set(CONAN_FRAMEWORK_DIRS_VORBIS )
set(CONAN_LIBS_VORBIS vorbisenc vorbisfile vorbis)
set(CONAN_PKG_LIBS_VORBIS vorbisenc vorbisfile vorbis)
set(CONAN_SYSTEM_LIBS_VORBIS m)
set(CONAN_FRAMEWORKS_VORBIS )
set(CONAN_FRAMEWORKS_FOUND_VORBIS "")  # Will be filled later
set(CONAN_DEFINES_VORBIS )
set(CONAN_BUILD_MODULES_PATHS_VORBIS )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_VORBIS )

set(CONAN_C_FLAGS_VORBIS "")
set(CONAN_CXX_FLAGS_VORBIS "")
set(CONAN_SHARED_LINKER_FLAGS_VORBIS "")
set(CONAN_EXE_LINKER_FLAGS_VORBIS "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_VORBIS_LIST "")
set(CONAN_CXX_FLAGS_VORBIS_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_VORBIS_LIST "")
set(CONAN_EXE_LINKER_FLAGS_VORBIS_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_VORBIS "${CONAN_FRAMEWORKS_VORBIS}" "_VORBIS" "")
# Append to aggregated values variable
set(CONAN_LIBS_VORBIS ${CONAN_PKG_LIBS_VORBIS} ${CONAN_SYSTEM_LIBS_VORBIS} ${CONAN_FRAMEWORKS_FOUND_VORBIS})


#################
###  OPUS
#################
set(CONAN_OPUS_ROOT "/home/me/.conan/data/opus/1.3.1/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_OPUS "/home/me/.conan/data/opus/1.3.1/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/opus/1.3.1/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/opus")
set(CONAN_LIB_DIRS_OPUS "/home/me/.conan/data/opus/1.3.1/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_OPUS )
set(CONAN_RES_DIRS_OPUS )
set(CONAN_SRC_DIRS_OPUS )
set(CONAN_BUILD_DIRS_OPUS "/home/me/.conan/data/opus/1.3.1/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_OPUS )
set(CONAN_LIBS_OPUS opus)
set(CONAN_PKG_LIBS_OPUS opus)
set(CONAN_SYSTEM_LIBS_OPUS m)
set(CONAN_FRAMEWORKS_OPUS )
set(CONAN_FRAMEWORKS_FOUND_OPUS "")  # Will be filled later
set(CONAN_DEFINES_OPUS )
set(CONAN_BUILD_MODULES_PATHS_OPUS )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_OPUS )

set(CONAN_C_FLAGS_OPUS "")
set(CONAN_CXX_FLAGS_OPUS "")
set(CONAN_SHARED_LINKER_FLAGS_OPUS "")
set(CONAN_EXE_LINKER_FLAGS_OPUS "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_OPUS_LIST "")
set(CONAN_CXX_FLAGS_OPUS_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_OPUS_LIST "")
set(CONAN_EXE_LINKER_FLAGS_OPUS_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_OPUS "${CONAN_FRAMEWORKS_OPUS}" "_OPUS" "")
# Append to aggregated values variable
set(CONAN_LIBS_OPUS ${CONAN_PKG_LIBS_OPUS} ${CONAN_SYSTEM_LIBS_OPUS} ${CONAN_FRAMEWORKS_FOUND_OPUS})


#################
###  CAIRO
#################
set(CONAN_CAIRO_ROOT "/home/me/.conan/data/cairo/1.17.4/_/_/package/f75004406220e51606a0b4a3d368ec0431589de7")
set(CONAN_INCLUDE_DIRS_CAIRO "/home/me/.conan/data/cairo/1.17.4/_/_/package/f75004406220e51606a0b4a3d368ec0431589de7/include"
			"/home/me/.conan/data/cairo/1.17.4/_/_/package/f75004406220e51606a0b4a3d368ec0431589de7/include/cairo")
set(CONAN_LIB_DIRS_CAIRO "/home/me/.conan/data/cairo/1.17.4/_/_/package/f75004406220e51606a0b4a3d368ec0431589de7/lib")
set(CONAN_BIN_DIRS_CAIRO "/home/me/.conan/data/cairo/1.17.4/_/_/package/f75004406220e51606a0b4a3d368ec0431589de7/bin")
set(CONAN_RES_DIRS_CAIRO )
set(CONAN_SRC_DIRS_CAIRO )
set(CONAN_BUILD_DIRS_CAIRO "/home/me/.conan/data/cairo/1.17.4/_/_/package/f75004406220e51606a0b4a3d368ec0431589de7/")
set(CONAN_FRAMEWORK_DIRS_CAIRO )
set(CONAN_LIBS_CAIRO cairo-gobject cairo-script-interpreter cairo)
set(CONAN_PKG_LIBS_CAIRO cairo-gobject cairo-script-interpreter cairo)
set(CONAN_SYSTEM_LIBS_CAIRO m dl pthread)
set(CONAN_FRAMEWORKS_CAIRO )
set(CONAN_FRAMEWORKS_FOUND_CAIRO "")  # Will be filled later
set(CONAN_DEFINES_CAIRO )
set(CONAN_BUILD_MODULES_PATHS_CAIRO )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_CAIRO )

set(CONAN_C_FLAGS_CAIRO "-pthread")
set(CONAN_CXX_FLAGS_CAIRO "-pthread")
set(CONAN_SHARED_LINKER_FLAGS_CAIRO "")
set(CONAN_EXE_LINKER_FLAGS_CAIRO "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_CAIRO_LIST "-pthread")
set(CONAN_CXX_FLAGS_CAIRO_LIST "-pthread")
set(CONAN_SHARED_LINKER_FLAGS_CAIRO_LIST "")
set(CONAN_EXE_LINKER_FLAGS_CAIRO_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_CAIRO "${CONAN_FRAMEWORKS_CAIRO}" "_CAIRO" "")
# Append to aggregated values variable
set(CONAN_LIBS_CAIRO ${CONAN_PKG_LIBS_CAIRO} ${CONAN_SYSTEM_LIBS_CAIRO} ${CONAN_FRAMEWORKS_FOUND_CAIRO})


#################
###  AT-SPI2-CORE
#################
set(CONAN_AT-SPI2-CORE_ROOT "/home/me/.conan/data/at-spi2-core/2.42.0/_/_/package/280465cd8a5ce4e0fb71526b5dac255f335d870b")
set(CONAN_INCLUDE_DIRS_AT-SPI2-CORE "/home/me/.conan/data/at-spi2-core/2.42.0/_/_/package/280465cd8a5ce4e0fb71526b5dac255f335d870b/include/at-spi-2.0")
set(CONAN_LIB_DIRS_AT-SPI2-CORE "/home/me/.conan/data/at-spi2-core/2.42.0/_/_/package/280465cd8a5ce4e0fb71526b5dac255f335d870b/lib")
set(CONAN_BIN_DIRS_AT-SPI2-CORE "/home/me/.conan/data/at-spi2-core/2.42.0/_/_/package/280465cd8a5ce4e0fb71526b5dac255f335d870b/bin")
set(CONAN_RES_DIRS_AT-SPI2-CORE "/home/me/.conan/data/at-spi2-core/2.42.0/_/_/package/280465cd8a5ce4e0fb71526b5dac255f335d870b/res")
set(CONAN_SRC_DIRS_AT-SPI2-CORE )
set(CONAN_BUILD_DIRS_AT-SPI2-CORE "/home/me/.conan/data/at-spi2-core/2.42.0/_/_/package/280465cd8a5ce4e0fb71526b5dac255f335d870b/")
set(CONAN_FRAMEWORK_DIRS_AT-SPI2-CORE )
set(CONAN_LIBS_AT-SPI2-CORE atspi)
set(CONAN_PKG_LIBS_AT-SPI2-CORE atspi)
set(CONAN_SYSTEM_LIBS_AT-SPI2-CORE )
set(CONAN_FRAMEWORKS_AT-SPI2-CORE )
set(CONAN_FRAMEWORKS_FOUND_AT-SPI2-CORE "")  # Will be filled later
set(CONAN_DEFINES_AT-SPI2-CORE )
set(CONAN_BUILD_MODULES_PATHS_AT-SPI2-CORE )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_AT-SPI2-CORE )

set(CONAN_C_FLAGS_AT-SPI2-CORE "")
set(CONAN_CXX_FLAGS_AT-SPI2-CORE "")
set(CONAN_SHARED_LINKER_FLAGS_AT-SPI2-CORE "")
set(CONAN_EXE_LINKER_FLAGS_AT-SPI2-CORE "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_AT-SPI2-CORE_LIST "")
set(CONAN_CXX_FLAGS_AT-SPI2-CORE_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_AT-SPI2-CORE_LIST "")
set(CONAN_EXE_LINKER_FLAGS_AT-SPI2-CORE_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_AT-SPI2-CORE "${CONAN_FRAMEWORKS_AT-SPI2-CORE}" "_AT-SPI2-CORE" "")
# Append to aggregated values variable
set(CONAN_LIBS_AT-SPI2-CORE ${CONAN_PKG_LIBS_AT-SPI2-CORE} ${CONAN_SYSTEM_LIBS_AT-SPI2-CORE} ${CONAN_FRAMEWORKS_FOUND_AT-SPI2-CORE})


#################
###  ATK
#################
set(CONAN_ATK_ROOT "/home/me/.conan/data/atk/2.36.0/_/_/package/e2e2120b6efb3881ae6b1454b8ce084b884b1c65")
set(CONAN_INCLUDE_DIRS_ATK "/home/me/.conan/data/atk/2.36.0/_/_/package/e2e2120b6efb3881ae6b1454b8ce084b884b1c65/include/atk-1.0")
set(CONAN_LIB_DIRS_ATK "/home/me/.conan/data/atk/2.36.0/_/_/package/e2e2120b6efb3881ae6b1454b8ce084b884b1c65/lib")
set(CONAN_BIN_DIRS_ATK "/home/me/.conan/data/atk/2.36.0/_/_/package/e2e2120b6efb3881ae6b1454b8ce084b884b1c65/bin")
set(CONAN_RES_DIRS_ATK )
set(CONAN_SRC_DIRS_ATK )
set(CONAN_BUILD_DIRS_ATK "/home/me/.conan/data/atk/2.36.0/_/_/package/e2e2120b6efb3881ae6b1454b8ce084b884b1c65/")
set(CONAN_FRAMEWORK_DIRS_ATK )
set(CONAN_LIBS_ATK atk-1.0)
set(CONAN_PKG_LIBS_ATK atk-1.0)
set(CONAN_SYSTEM_LIBS_ATK )
set(CONAN_FRAMEWORKS_ATK )
set(CONAN_FRAMEWORKS_FOUND_ATK "")  # Will be filled later
set(CONAN_DEFINES_ATK )
set(CONAN_BUILD_MODULES_PATHS_ATK )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_ATK )

set(CONAN_C_FLAGS_ATK "")
set(CONAN_CXX_FLAGS_ATK "")
set(CONAN_SHARED_LINKER_FLAGS_ATK "")
set(CONAN_EXE_LINKER_FLAGS_ATK "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_ATK_LIST "")
set(CONAN_CXX_FLAGS_ATK_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_ATK_LIST "")
set(CONAN_EXE_LINKER_FLAGS_ATK_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_ATK "${CONAN_FRAMEWORKS_ATK}" "_ATK" "")
# Append to aggregated values variable
set(CONAN_LIBS_ATK ${CONAN_PKG_LIBS_ATK} ${CONAN_SYSTEM_LIBS_ATK} ${CONAN_FRAMEWORKS_FOUND_ATK})


#################
###  LIBXML2
#################
set(CONAN_LIBXML2_ROOT "/home/me/.conan/data/libxml2/2.9.12/_/_/package/f9bf12b05a917e3b694bc35eb5037c71fbf6b7ca")
set(CONAN_INCLUDE_DIRS_LIBXML2 "/home/me/.conan/data/libxml2/2.9.12/_/_/package/f9bf12b05a917e3b694bc35eb5037c71fbf6b7ca/include"
			"/home/me/.conan/data/libxml2/2.9.12/_/_/package/f9bf12b05a917e3b694bc35eb5037c71fbf6b7ca/include/libxml2")
set(CONAN_LIB_DIRS_LIBXML2 "/home/me/.conan/data/libxml2/2.9.12/_/_/package/f9bf12b05a917e3b694bc35eb5037c71fbf6b7ca/lib")
set(CONAN_BIN_DIRS_LIBXML2 "/home/me/.conan/data/libxml2/2.9.12/_/_/package/f9bf12b05a917e3b694bc35eb5037c71fbf6b7ca/bin")
set(CONAN_RES_DIRS_LIBXML2 )
set(CONAN_SRC_DIRS_LIBXML2 )
set(CONAN_BUILD_DIRS_LIBXML2 "/home/me/.conan/data/libxml2/2.9.12/_/_/package/f9bf12b05a917e3b694bc35eb5037c71fbf6b7ca/")
set(CONAN_FRAMEWORK_DIRS_LIBXML2 )
set(CONAN_LIBS_LIBXML2 xml2)
set(CONAN_PKG_LIBS_LIBXML2 xml2)
set(CONAN_SYSTEM_LIBS_LIBXML2 m pthread)
set(CONAN_FRAMEWORKS_LIBXML2 )
set(CONAN_FRAMEWORKS_FOUND_LIBXML2 "")  # Will be filled later
set(CONAN_DEFINES_LIBXML2 "-DLIBXML_STATIC")
set(CONAN_BUILD_MODULES_PATHS_LIBXML2 )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBXML2 "LIBXML_STATIC")

set(CONAN_C_FLAGS_LIBXML2 "")
set(CONAN_CXX_FLAGS_LIBXML2 "")
set(CONAN_SHARED_LINKER_FLAGS_LIBXML2 "")
set(CONAN_EXE_LINKER_FLAGS_LIBXML2 "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBXML2_LIST "")
set(CONAN_CXX_FLAGS_LIBXML2_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBXML2_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBXML2_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBXML2 "${CONAN_FRAMEWORKS_LIBXML2}" "_LIBXML2" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBXML2 ${CONAN_PKG_LIBS_LIBXML2} ${CONAN_SYSTEM_LIBS_LIBXML2} ${CONAN_FRAMEWORKS_FOUND_LIBXML2})


#################
###  HARFBUZZ
#################
set(CONAN_HARFBUZZ_ROOT "/home/me/.conan/data/harfbuzz/3.2.0/_/_/package/7a5bb427e9154bf4923bf7ee0a534d6d536731c7")
set(CONAN_INCLUDE_DIRS_HARFBUZZ "/home/me/.conan/data/harfbuzz/3.2.0/_/_/package/7a5bb427e9154bf4923bf7ee0a534d6d536731c7/include"
			"/home/me/.conan/data/harfbuzz/3.2.0/_/_/package/7a5bb427e9154bf4923bf7ee0a534d6d536731c7/include/harfbuzz")
set(CONAN_LIB_DIRS_HARFBUZZ "/home/me/.conan/data/harfbuzz/3.2.0/_/_/package/7a5bb427e9154bf4923bf7ee0a534d6d536731c7/lib")
set(CONAN_BIN_DIRS_HARFBUZZ )
set(CONAN_RES_DIRS_HARFBUZZ )
set(CONAN_SRC_DIRS_HARFBUZZ )
set(CONAN_BUILD_DIRS_HARFBUZZ "/home/me/.conan/data/harfbuzz/3.2.0/_/_/package/7a5bb427e9154bf4923bf7ee0a534d6d536731c7/")
set(CONAN_FRAMEWORK_DIRS_HARFBUZZ )
set(CONAN_LIBS_HARFBUZZ harfbuzz)
set(CONAN_PKG_LIBS_HARFBUZZ harfbuzz)
set(CONAN_SYSTEM_LIBS_HARFBUZZ m stdc++)
set(CONAN_FRAMEWORKS_HARFBUZZ )
set(CONAN_FRAMEWORKS_FOUND_HARFBUZZ "")  # Will be filled later
set(CONAN_DEFINES_HARFBUZZ )
set(CONAN_BUILD_MODULES_PATHS_HARFBUZZ )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_HARFBUZZ )

set(CONAN_C_FLAGS_HARFBUZZ "")
set(CONAN_CXX_FLAGS_HARFBUZZ "")
set(CONAN_SHARED_LINKER_FLAGS_HARFBUZZ "")
set(CONAN_EXE_LINKER_FLAGS_HARFBUZZ "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_HARFBUZZ_LIST "")
set(CONAN_CXX_FLAGS_HARFBUZZ_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_HARFBUZZ_LIST "")
set(CONAN_EXE_LINKER_FLAGS_HARFBUZZ_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_HARFBUZZ "${CONAN_FRAMEWORKS_HARFBUZZ}" "_HARFBUZZ" "")
# Append to aggregated values variable
set(CONAN_LIBS_HARFBUZZ ${CONAN_PKG_LIBS_HARFBUZZ} ${CONAN_SYSTEM_LIBS_HARFBUZZ} ${CONAN_FRAMEWORKS_FOUND_HARFBUZZ})


#################
###  FRIBIDI
#################
set(CONAN_FRIBIDI_ROOT "/home/me/.conan/data/fribidi/1.0.10/_/_/package/2efda50f82a7d03560e19005db8e932cb0aafd09")
set(CONAN_INCLUDE_DIRS_FRIBIDI "/home/me/.conan/data/fribidi/1.0.10/_/_/package/2efda50f82a7d03560e19005db8e932cb0aafd09/include"
			"/home/me/.conan/data/fribidi/1.0.10/_/_/package/2efda50f82a7d03560e19005db8e932cb0aafd09/include/fribidi")
set(CONAN_LIB_DIRS_FRIBIDI "/home/me/.conan/data/fribidi/1.0.10/_/_/package/2efda50f82a7d03560e19005db8e932cb0aafd09/lib")
set(CONAN_BIN_DIRS_FRIBIDI )
set(CONAN_RES_DIRS_FRIBIDI )
set(CONAN_SRC_DIRS_FRIBIDI )
set(CONAN_BUILD_DIRS_FRIBIDI "/home/me/.conan/data/fribidi/1.0.10/_/_/package/2efda50f82a7d03560e19005db8e932cb0aafd09/")
set(CONAN_FRAMEWORK_DIRS_FRIBIDI )
set(CONAN_LIBS_FRIBIDI fribidi)
set(CONAN_PKG_LIBS_FRIBIDI fribidi)
set(CONAN_SYSTEM_LIBS_FRIBIDI )
set(CONAN_FRAMEWORKS_FRIBIDI )
set(CONAN_FRAMEWORKS_FOUND_FRIBIDI "")  # Will be filled later
set(CONAN_DEFINES_FRIBIDI "-DFRIBIDI_LIB_STATIC")
set(CONAN_BUILD_MODULES_PATHS_FRIBIDI )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_FRIBIDI "FRIBIDI_LIB_STATIC")

set(CONAN_C_FLAGS_FRIBIDI "")
set(CONAN_CXX_FLAGS_FRIBIDI "")
set(CONAN_SHARED_LINKER_FLAGS_FRIBIDI "")
set(CONAN_EXE_LINKER_FLAGS_FRIBIDI "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_FRIBIDI_LIST "")
set(CONAN_CXX_FLAGS_FRIBIDI_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_FRIBIDI_LIST "")
set(CONAN_EXE_LINKER_FLAGS_FRIBIDI_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_FRIBIDI "${CONAN_FRAMEWORKS_FRIBIDI}" "_FRIBIDI" "")
# Append to aggregated values variable
set(CONAN_LIBS_FRIBIDI ${CONAN_PKG_LIBS_FRIBIDI} ${CONAN_SYSTEM_LIBS_FRIBIDI} ${CONAN_FRAMEWORKS_FOUND_FRIBIDI})


#################
###  LIBJPEG
#################
set(CONAN_LIBJPEG_ROOT "/home/me/.conan/data/libjpeg/9d/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_LIBJPEG "/home/me/.conan/data/libjpeg/9d/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include")
set(CONAN_LIB_DIRS_LIBJPEG "/home/me/.conan/data/libjpeg/9d/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_LIBJPEG )
set(CONAN_RES_DIRS_LIBJPEG "/home/me/.conan/data/libjpeg/9d/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/res")
set(CONAN_SRC_DIRS_LIBJPEG )
set(CONAN_BUILD_DIRS_LIBJPEG "/home/me/.conan/data/libjpeg/9d/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_LIBJPEG )
set(CONAN_LIBS_LIBJPEG jpeg)
set(CONAN_PKG_LIBS_LIBJPEG jpeg)
set(CONAN_SYSTEM_LIBS_LIBJPEG )
set(CONAN_FRAMEWORKS_LIBJPEG )
set(CONAN_FRAMEWORKS_FOUND_LIBJPEG "")  # Will be filled later
set(CONAN_DEFINES_LIBJPEG "-DLIBJPEG_STATIC")
set(CONAN_BUILD_MODULES_PATHS_LIBJPEG )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBJPEG "LIBJPEG_STATIC")

set(CONAN_C_FLAGS_LIBJPEG "")
set(CONAN_CXX_FLAGS_LIBJPEG "")
set(CONAN_SHARED_LINKER_FLAGS_LIBJPEG "")
set(CONAN_EXE_LINKER_FLAGS_LIBJPEG "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBJPEG_LIST "")
set(CONAN_CXX_FLAGS_LIBJPEG_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBJPEG_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBJPEG_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBJPEG "${CONAN_FRAMEWORKS_LIBJPEG}" "_LIBJPEG" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBJPEG ${CONAN_PKG_LIBS_LIBJPEG} ${CONAN_SYSTEM_LIBS_LIBJPEG} ${CONAN_FRAMEWORKS_FOUND_LIBJPEG})


#################
###  LIBWEBP
#################
set(CONAN_LIBWEBP_ROOT "/home/me/.conan/data/libwebp/1.2.2/_/_/package/abc00ad0249e9242a1b4cfef4dc265e67c782e32")
set(CONAN_INCLUDE_DIRS_LIBWEBP "/home/me/.conan/data/libwebp/1.2.2/_/_/package/abc00ad0249e9242a1b4cfef4dc265e67c782e32/include")
set(CONAN_LIB_DIRS_LIBWEBP "/home/me/.conan/data/libwebp/1.2.2/_/_/package/abc00ad0249e9242a1b4cfef4dc265e67c782e32/lib")
set(CONAN_BIN_DIRS_LIBWEBP )
set(CONAN_RES_DIRS_LIBWEBP )
set(CONAN_SRC_DIRS_LIBWEBP )
set(CONAN_BUILD_DIRS_LIBWEBP "/home/me/.conan/data/libwebp/1.2.2/_/_/package/abc00ad0249e9242a1b4cfef4dc265e67c782e32/")
set(CONAN_FRAMEWORK_DIRS_LIBWEBP )
set(CONAN_LIBS_LIBWEBP webpdecoder webpdemux webpmux webp)
set(CONAN_PKG_LIBS_LIBWEBP webpdecoder webpdemux webpmux webp)
set(CONAN_SYSTEM_LIBS_LIBWEBP pthread m)
set(CONAN_FRAMEWORKS_LIBWEBP )
set(CONAN_FRAMEWORKS_FOUND_LIBWEBP "")  # Will be filled later
set(CONAN_DEFINES_LIBWEBP )
set(CONAN_BUILD_MODULES_PATHS_LIBWEBP )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBWEBP )

set(CONAN_C_FLAGS_LIBWEBP "")
set(CONAN_CXX_FLAGS_LIBWEBP "")
set(CONAN_SHARED_LINKER_FLAGS_LIBWEBP "")
set(CONAN_EXE_LINKER_FLAGS_LIBWEBP "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBWEBP_LIST "")
set(CONAN_CXX_FLAGS_LIBWEBP_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBWEBP_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBWEBP_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBWEBP "${CONAN_FRAMEWORKS_LIBWEBP}" "_LIBWEBP" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBWEBP ${CONAN_PKG_LIBS_LIBWEBP} ${CONAN_SYSTEM_LIBS_LIBWEBP} ${CONAN_FRAMEWORKS_FOUND_LIBWEBP})


#################
###  LIBDEFLATE
#################
set(CONAN_LIBDEFLATE_ROOT "/home/me/.conan/data/libdeflate/1.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_LIBDEFLATE "/home/me/.conan/data/libdeflate/1.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include")
set(CONAN_LIB_DIRS_LIBDEFLATE "/home/me/.conan/data/libdeflate/1.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_LIBDEFLATE )
set(CONAN_RES_DIRS_LIBDEFLATE )
set(CONAN_SRC_DIRS_LIBDEFLATE )
set(CONAN_BUILD_DIRS_LIBDEFLATE "/home/me/.conan/data/libdeflate/1.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_LIBDEFLATE )
set(CONAN_LIBS_LIBDEFLATE deflate)
set(CONAN_PKG_LIBS_LIBDEFLATE deflate)
set(CONAN_SYSTEM_LIBS_LIBDEFLATE )
set(CONAN_FRAMEWORKS_LIBDEFLATE )
set(CONAN_FRAMEWORKS_FOUND_LIBDEFLATE "")  # Will be filled later
set(CONAN_DEFINES_LIBDEFLATE )
set(CONAN_BUILD_MODULES_PATHS_LIBDEFLATE )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBDEFLATE )

set(CONAN_C_FLAGS_LIBDEFLATE "")
set(CONAN_CXX_FLAGS_LIBDEFLATE "")
set(CONAN_SHARED_LINKER_FLAGS_LIBDEFLATE "")
set(CONAN_EXE_LINKER_FLAGS_LIBDEFLATE "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBDEFLATE_LIST "")
set(CONAN_CXX_FLAGS_LIBDEFLATE_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBDEFLATE_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBDEFLATE_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBDEFLATE "${CONAN_FRAMEWORKS_LIBDEFLATE}" "_LIBDEFLATE" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBDEFLATE ${CONAN_PKG_LIBS_LIBDEFLATE} ${CONAN_SYSTEM_LIBS_LIBDEFLATE} ${CONAN_FRAMEWORKS_FOUND_LIBDEFLATE})


#################
###  XZ_UTILS
#################
set(CONAN_XZ_UTILS_ROOT "/home/me/.conan/data/xz_utils/5.2.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_XZ_UTILS "/home/me/.conan/data/xz_utils/5.2.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include")
set(CONAN_LIB_DIRS_XZ_UTILS "/home/me/.conan/data/xz_utils/5.2.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_XZ_UTILS "/home/me/.conan/data/xz_utils/5.2.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/bin")
set(CONAN_RES_DIRS_XZ_UTILS )
set(CONAN_SRC_DIRS_XZ_UTILS )
set(CONAN_BUILD_DIRS_XZ_UTILS "/home/me/.conan/data/xz_utils/5.2.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_XZ_UTILS )
set(CONAN_LIBS_XZ_UTILS lzma)
set(CONAN_PKG_LIBS_XZ_UTILS lzma)
set(CONAN_SYSTEM_LIBS_XZ_UTILS pthread)
set(CONAN_FRAMEWORKS_XZ_UTILS )
set(CONAN_FRAMEWORKS_FOUND_XZ_UTILS "")  # Will be filled later
set(CONAN_DEFINES_XZ_UTILS "-DLZMA_API_STATIC")
set(CONAN_BUILD_MODULES_PATHS_XZ_UTILS )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_XZ_UTILS "LZMA_API_STATIC")

set(CONAN_C_FLAGS_XZ_UTILS "")
set(CONAN_CXX_FLAGS_XZ_UTILS "")
set(CONAN_SHARED_LINKER_FLAGS_XZ_UTILS "")
set(CONAN_EXE_LINKER_FLAGS_XZ_UTILS "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_XZ_UTILS_LIST "")
set(CONAN_CXX_FLAGS_XZ_UTILS_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_XZ_UTILS_LIST "")
set(CONAN_EXE_LINKER_FLAGS_XZ_UTILS_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_XZ_UTILS "${CONAN_FRAMEWORKS_XZ_UTILS}" "_XZ_UTILS" "")
# Append to aggregated values variable
set(CONAN_LIBS_XZ_UTILS ${CONAN_PKG_LIBS_XZ_UTILS} ${CONAN_SYSTEM_LIBS_XZ_UTILS} ${CONAN_FRAMEWORKS_FOUND_XZ_UTILS})


#################
###  JBIG
#################
set(CONAN_JBIG_ROOT "/home/me/.conan/data/jbig/20160605/_/_/package/5dedf41b83996f2663697c4c548617b81e83ca54")
set(CONAN_INCLUDE_DIRS_JBIG "/home/me/.conan/data/jbig/20160605/_/_/package/5dedf41b83996f2663697c4c548617b81e83ca54/include")
set(CONAN_LIB_DIRS_JBIG "/home/me/.conan/data/jbig/20160605/_/_/package/5dedf41b83996f2663697c4c548617b81e83ca54/lib")
set(CONAN_BIN_DIRS_JBIG "/home/me/.conan/data/jbig/20160605/_/_/package/5dedf41b83996f2663697c4c548617b81e83ca54/bin")
set(CONAN_RES_DIRS_JBIG )
set(CONAN_SRC_DIRS_JBIG )
set(CONAN_BUILD_DIRS_JBIG "/home/me/.conan/data/jbig/20160605/_/_/package/5dedf41b83996f2663697c4c548617b81e83ca54/")
set(CONAN_FRAMEWORK_DIRS_JBIG )
set(CONAN_LIBS_JBIG jbig)
set(CONAN_PKG_LIBS_JBIG jbig)
set(CONAN_SYSTEM_LIBS_JBIG )
set(CONAN_FRAMEWORKS_JBIG )
set(CONAN_FRAMEWORKS_FOUND_JBIG "")  # Will be filled later
set(CONAN_DEFINES_JBIG )
set(CONAN_BUILD_MODULES_PATHS_JBIG )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_JBIG )

set(CONAN_C_FLAGS_JBIG "")
set(CONAN_CXX_FLAGS_JBIG "")
set(CONAN_SHARED_LINKER_FLAGS_JBIG "")
set(CONAN_EXE_LINKER_FLAGS_JBIG "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_JBIG_LIST "")
set(CONAN_CXX_FLAGS_JBIG_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_JBIG_LIST "")
set(CONAN_EXE_LINKER_FLAGS_JBIG_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_JBIG "${CONAN_FRAMEWORKS_JBIG}" "_JBIG" "")
# Append to aggregated values variable
set(CONAN_LIBS_JBIG ${CONAN_PKG_LIBS_JBIG} ${CONAN_SYSTEM_LIBS_JBIG} ${CONAN_FRAMEWORKS_FOUND_JBIG})


#################
###  ZSTD
#################
set(CONAN_ZSTD_ROOT "/home/me/.conan/data/zstd/1.5.2/_/_/package/f95595cf9a05caa71e0ee161277907de90f9722f")
set(CONAN_INCLUDE_DIRS_ZSTD "/home/me/.conan/data/zstd/1.5.2/_/_/package/f95595cf9a05caa71e0ee161277907de90f9722f/include")
set(CONAN_LIB_DIRS_ZSTD "/home/me/.conan/data/zstd/1.5.2/_/_/package/f95595cf9a05caa71e0ee161277907de90f9722f/lib")
set(CONAN_BIN_DIRS_ZSTD )
set(CONAN_RES_DIRS_ZSTD )
set(CONAN_SRC_DIRS_ZSTD )
set(CONAN_BUILD_DIRS_ZSTD "/home/me/.conan/data/zstd/1.5.2/_/_/package/f95595cf9a05caa71e0ee161277907de90f9722f/")
set(CONAN_FRAMEWORK_DIRS_ZSTD )
set(CONAN_LIBS_ZSTD zstd)
set(CONAN_PKG_LIBS_ZSTD zstd)
set(CONAN_SYSTEM_LIBS_ZSTD pthread)
set(CONAN_FRAMEWORKS_ZSTD )
set(CONAN_FRAMEWORKS_FOUND_ZSTD "")  # Will be filled later
set(CONAN_DEFINES_ZSTD )
set(CONAN_BUILD_MODULES_PATHS_ZSTD )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_ZSTD )

set(CONAN_C_FLAGS_ZSTD "")
set(CONAN_CXX_FLAGS_ZSTD "")
set(CONAN_SHARED_LINKER_FLAGS_ZSTD "")
set(CONAN_EXE_LINKER_FLAGS_ZSTD "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_ZSTD_LIST "")
set(CONAN_CXX_FLAGS_ZSTD_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_ZSTD_LIST "")
set(CONAN_EXE_LINKER_FLAGS_ZSTD_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_ZSTD "${CONAN_FRAMEWORKS_ZSTD}" "_ZSTD" "")
# Append to aggregated values variable
set(CONAN_LIBS_ZSTD ${CONAN_PKG_LIBS_ZSTD} ${CONAN_SYSTEM_LIBS_ZSTD} ${CONAN_FRAMEWORKS_FOUND_ZSTD})


#################
###  OGG
#################
set(CONAN_OGG_ROOT "/home/me/.conan/data/ogg/1.3.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_OGG "/home/me/.conan/data/ogg/1.3.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include")
set(CONAN_LIB_DIRS_OGG "/home/me/.conan/data/ogg/1.3.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_OGG )
set(CONAN_RES_DIRS_OGG )
set(CONAN_SRC_DIRS_OGG )
set(CONAN_BUILD_DIRS_OGG "/home/me/.conan/data/ogg/1.3.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_OGG )
set(CONAN_LIBS_OGG ogg)
set(CONAN_PKG_LIBS_OGG ogg)
set(CONAN_SYSTEM_LIBS_OGG )
set(CONAN_FRAMEWORKS_OGG )
set(CONAN_FRAMEWORKS_FOUND_OGG "")  # Will be filled later
set(CONAN_DEFINES_OGG )
set(CONAN_BUILD_MODULES_PATHS_OGG )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_OGG )

set(CONAN_C_FLAGS_OGG "")
set(CONAN_CXX_FLAGS_OGG "")
set(CONAN_SHARED_LINKER_FLAGS_OGG "")
set(CONAN_EXE_LINKER_FLAGS_OGG "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_OGG_LIST "")
set(CONAN_CXX_FLAGS_OGG_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_OGG_LIST "")
set(CONAN_EXE_LINKER_FLAGS_OGG_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_OGG "${CONAN_FRAMEWORKS_OGG}" "_OGG" "")
# Append to aggregated values variable
set(CONAN_LIBS_OGG ${CONAN_PKG_LIBS_OGG} ${CONAN_SYSTEM_LIBS_OGG} ${CONAN_FRAMEWORKS_FOUND_OGG})


#################
###  OPENGL
#################
set(CONAN_OPENGL_ROOT "/home/me/.conan/data/opengl/system/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_OPENGL )
set(CONAN_LIB_DIRS_OPENGL )
set(CONAN_BIN_DIRS_OPENGL )
set(CONAN_RES_DIRS_OPENGL )
set(CONAN_SRC_DIRS_OPENGL )
set(CONAN_BUILD_DIRS_OPENGL "/home/me/.conan/data/opengl/system/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_OPENGL )
set(CONAN_LIBS_OPENGL )
set(CONAN_PKG_LIBS_OPENGL )
set(CONAN_SYSTEM_LIBS_OPENGL GL)
set(CONAN_FRAMEWORKS_OPENGL )
set(CONAN_FRAMEWORKS_FOUND_OPENGL "")  # Will be filled later
set(CONAN_DEFINES_OPENGL )
set(CONAN_BUILD_MODULES_PATHS_OPENGL )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_OPENGL )

set(CONAN_C_FLAGS_OPENGL "")
set(CONAN_CXX_FLAGS_OPENGL "")
set(CONAN_SHARED_LINKER_FLAGS_OPENGL "")
set(CONAN_EXE_LINKER_FLAGS_OPENGL "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_OPENGL_LIST "")
set(CONAN_CXX_FLAGS_OPENGL_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_OPENGL_LIST "")
set(CONAN_EXE_LINKER_FLAGS_OPENGL_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_OPENGL "${CONAN_FRAMEWORKS_OPENGL}" "_OPENGL" "")
# Append to aggregated values variable
set(CONAN_LIBS_OPENGL ${CONAN_PKG_LIBS_OPENGL} ${CONAN_SYSTEM_LIBS_OPENGL} ${CONAN_FRAMEWORKS_FOUND_OPENGL})


#################
###  XORG
#################
set(CONAN_XORG_ROOT "/home/me/.conan/data/xorg/system/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_XORG "/usr/include/uuid"
			"/usr/include/freetype2"
			"/usr/include/libpng16")
set(CONAN_LIB_DIRS_XORG )
set(CONAN_BIN_DIRS_XORG )
set(CONAN_RES_DIRS_XORG )
set(CONAN_SRC_DIRS_XORG )
set(CONAN_BUILD_DIRS_XORG "/home/me/.conan/data/xorg/system/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_XORG )
set(CONAN_LIBS_XORG )
set(CONAN_PKG_LIBS_XORG )
set(CONAN_SYSTEM_LIBS_XORG X11 X11-xcb xcb fontenc ICE SM Xau Xaw7 Xt Xcomposite Xcursor Xdamage Xfixes Xdmcp Xext Xft Xi Xinerama xkbfile Xmu Xmuu Xpm Xrandr Xrender XRes Xss Xtst Xv XvMC Xxf86vm xcb-xkb xcb-icccm xcb-image xcb-shm xcb-keysyms xcb-randr xcb-render xcb-render-util xcb-shape xcb-sync xcb-xfixes xcb-xinerama xcb-util xcb-dri3 uuid)
set(CONAN_FRAMEWORKS_XORG )
set(CONAN_FRAMEWORKS_FOUND_XORG "")  # Will be filled later
set(CONAN_DEFINES_XORG "-D_DEFAULT_SOURCE"
			"-D_BSD_SOURCE"
			"-DHAS_FCHOWN"
			"-DHAS_STICKY_DIR_BIT")
set(CONAN_BUILD_MODULES_PATHS_XORG )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_XORG "_DEFAULT_SOURCE"
			"_BSD_SOURCE"
			"HAS_FCHOWN"
			"HAS_STICKY_DIR_BIT")

set(CONAN_C_FLAGS_XORG "")
set(CONAN_CXX_FLAGS_XORG "")
set(CONAN_SHARED_LINKER_FLAGS_XORG "")
set(CONAN_EXE_LINKER_FLAGS_XORG "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_XORG_LIST "")
set(CONAN_CXX_FLAGS_XORG_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_XORG_LIST "")
set(CONAN_EXE_LINKER_FLAGS_XORG_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_XORG "${CONAN_FRAMEWORKS_XORG}" "_XORG" "")
# Append to aggregated values variable
set(CONAN_LIBS_XORG ${CONAN_PKG_LIBS_XORG} ${CONAN_SYSTEM_LIBS_XORG} ${CONAN_FRAMEWORKS_FOUND_XORG})


#################
###  GLIB
#################
set(CONAN_GLIB_ROOT "/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949")
set(CONAN_INCLUDE_DIRS_GLIB "/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/include"
			"/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/include/gio-unix-2.0"
			"/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/include/glib-2.0"
			"/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/lib/glib-2.0/include")
set(CONAN_LIB_DIRS_GLIB "/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/lib")
set(CONAN_BIN_DIRS_GLIB "/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/bin")
set(CONAN_RES_DIRS_GLIB "/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/res")
set(CONAN_SRC_DIRS_GLIB )
set(CONAN_BUILD_DIRS_GLIB "/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/")
set(CONAN_FRAMEWORK_DIRS_GLIB )
set(CONAN_LIBS_GLIB gthread-2.0 gio-2.0 gmodule-2.0 gobject-2.0 glib-2.0)
set(CONAN_PKG_LIBS_GLIB gthread-2.0 gio-2.0 gmodule-2.0 gobject-2.0 glib-2.0)
set(CONAN_SYSTEM_LIBS_GLIB pthread resolv dl)
set(CONAN_FRAMEWORKS_GLIB )
set(CONAN_FRAMEWORKS_FOUND_GLIB "")  # Will be filled later
set(CONAN_DEFINES_GLIB )
set(CONAN_BUILD_MODULES_PATHS_GLIB )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_GLIB )

set(CONAN_C_FLAGS_GLIB "")
set(CONAN_CXX_FLAGS_GLIB "")
set(CONAN_SHARED_LINKER_FLAGS_GLIB "-Wl,--export-dynamic")
set(CONAN_EXE_LINKER_FLAGS_GLIB "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_GLIB_LIST "")
set(CONAN_CXX_FLAGS_GLIB_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_GLIB_LIST "-Wl,--export-dynamic")
set(CONAN_EXE_LINKER_FLAGS_GLIB_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_GLIB "${CONAN_FRAMEWORKS_GLIB}" "_GLIB" "")
# Append to aggregated values variable
set(CONAN_LIBS_GLIB ${CONAN_PKG_LIBS_GLIB} ${CONAN_SYSTEM_LIBS_GLIB} ${CONAN_FRAMEWORKS_FOUND_GLIB})


#################
###  PIXMAN
#################
set(CONAN_PIXMAN_ROOT "/home/me/.conan/data/pixman/0.40.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_PIXMAN "/home/me/.conan/data/pixman/0.40.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/pixman/0.40.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/pixman-1")
set(CONAN_LIB_DIRS_PIXMAN "/home/me/.conan/data/pixman/0.40.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_PIXMAN )
set(CONAN_RES_DIRS_PIXMAN )
set(CONAN_SRC_DIRS_PIXMAN )
set(CONAN_BUILD_DIRS_PIXMAN "/home/me/.conan/data/pixman/0.40.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_PIXMAN )
set(CONAN_LIBS_PIXMAN pixman-1)
set(CONAN_PKG_LIBS_PIXMAN pixman-1)
set(CONAN_SYSTEM_LIBS_PIXMAN pthread m)
set(CONAN_FRAMEWORKS_PIXMAN )
set(CONAN_FRAMEWORKS_FOUND_PIXMAN "")  # Will be filled later
set(CONAN_DEFINES_PIXMAN )
set(CONAN_BUILD_MODULES_PATHS_PIXMAN )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_PIXMAN )

set(CONAN_C_FLAGS_PIXMAN "")
set(CONAN_CXX_FLAGS_PIXMAN "")
set(CONAN_SHARED_LINKER_FLAGS_PIXMAN "")
set(CONAN_EXE_LINKER_FLAGS_PIXMAN "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_PIXMAN_LIST "")
set(CONAN_CXX_FLAGS_PIXMAN_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_PIXMAN_LIST "")
set(CONAN_EXE_LINKER_FLAGS_PIXMAN_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_PIXMAN "${CONAN_FRAMEWORKS_PIXMAN}" "_PIXMAN" "")
# Append to aggregated values variable
set(CONAN_LIBS_PIXMAN ${CONAN_PKG_LIBS_PIXMAN} ${CONAN_SYSTEM_LIBS_PIXMAN} ${CONAN_FRAMEWORKS_FOUND_PIXMAN})


#################
###  LZO
#################
set(CONAN_LZO_ROOT "/home/me/.conan/data/lzo/2.10/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_LZO "/home/me/.conan/data/lzo/2.10/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/lzo/2.10/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/lzo")
set(CONAN_LIB_DIRS_LZO "/home/me/.conan/data/lzo/2.10/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_LZO )
set(CONAN_RES_DIRS_LZO )
set(CONAN_SRC_DIRS_LZO )
set(CONAN_BUILD_DIRS_LZO "/home/me/.conan/data/lzo/2.10/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_LZO )
set(CONAN_LIBS_LZO lzo2)
set(CONAN_PKG_LIBS_LZO lzo2)
set(CONAN_SYSTEM_LIBS_LZO )
set(CONAN_FRAMEWORKS_LZO )
set(CONAN_FRAMEWORKS_FOUND_LZO "")  # Will be filled later
set(CONAN_DEFINES_LZO )
set(CONAN_BUILD_MODULES_PATHS_LZO )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LZO )

set(CONAN_C_FLAGS_LZO "")
set(CONAN_CXX_FLAGS_LZO "")
set(CONAN_SHARED_LINKER_FLAGS_LZO "")
set(CONAN_EXE_LINKER_FLAGS_LZO "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LZO_LIST "")
set(CONAN_CXX_FLAGS_LZO_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LZO_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LZO_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LZO "${CONAN_FRAMEWORKS_LZO}" "_LZO" "")
# Append to aggregated values variable
set(CONAN_LIBS_LZO ${CONAN_PKG_LIBS_LZO} ${CONAN_SYSTEM_LIBS_LZO} ${CONAN_FRAMEWORKS_FOUND_LZO})


#################
###  FONTCONFIG
#################
set(CONAN_FONTCONFIG_ROOT "/home/me/.conan/data/fontconfig/2.13.93/_/_/package/ebf14a7c2e256d19a84a210a821beaa67f0a0a9c")
set(CONAN_INCLUDE_DIRS_FONTCONFIG "/home/me/.conan/data/fontconfig/2.13.93/_/_/package/ebf14a7c2e256d19a84a210a821beaa67f0a0a9c/include")
set(CONAN_LIB_DIRS_FONTCONFIG "/home/me/.conan/data/fontconfig/2.13.93/_/_/package/ebf14a7c2e256d19a84a210a821beaa67f0a0a9c/lib")
set(CONAN_BIN_DIRS_FONTCONFIG "/home/me/.conan/data/fontconfig/2.13.93/_/_/package/ebf14a7c2e256d19a84a210a821beaa67f0a0a9c/bin")
set(CONAN_RES_DIRS_FONTCONFIG )
set(CONAN_SRC_DIRS_FONTCONFIG )
set(CONAN_BUILD_DIRS_FONTCONFIG "/home/me/.conan/data/fontconfig/2.13.93/_/_/package/ebf14a7c2e256d19a84a210a821beaa67f0a0a9c/")
set(CONAN_FRAMEWORK_DIRS_FONTCONFIG )
set(CONAN_LIBS_FONTCONFIG fontconfig)
set(CONAN_PKG_LIBS_FONTCONFIG fontconfig)
set(CONAN_SYSTEM_LIBS_FONTCONFIG m pthread)
set(CONAN_FRAMEWORKS_FONTCONFIG )
set(CONAN_FRAMEWORKS_FOUND_FONTCONFIG "")  # Will be filled later
set(CONAN_DEFINES_FONTCONFIG )
set(CONAN_BUILD_MODULES_PATHS_FONTCONFIG )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_FONTCONFIG )

set(CONAN_C_FLAGS_FONTCONFIG "")
set(CONAN_CXX_FLAGS_FONTCONFIG "")
set(CONAN_SHARED_LINKER_FLAGS_FONTCONFIG "")
set(CONAN_EXE_LINKER_FLAGS_FONTCONFIG "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_FONTCONFIG_LIST "")
set(CONAN_CXX_FLAGS_FONTCONFIG_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_FONTCONFIG_LIST "")
set(CONAN_EXE_LINKER_FLAGS_FONTCONFIG_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_FONTCONFIG "${CONAN_FRAMEWORKS_FONTCONFIG}" "_FONTCONFIG" "")
# Append to aggregated values variable
set(CONAN_LIBS_FONTCONFIG ${CONAN_PKG_LIBS_FONTCONFIG} ${CONAN_SYSTEM_LIBS_FONTCONFIG} ${CONAN_FRAMEWORKS_FOUND_FONTCONFIG})


#################
###  EGL
#################
set(CONAN_EGL_ROOT "/home/me/.conan/data/egl/system/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_EGL )
set(CONAN_LIB_DIRS_EGL )
set(CONAN_BIN_DIRS_EGL )
set(CONAN_RES_DIRS_EGL )
set(CONAN_SRC_DIRS_EGL )
set(CONAN_BUILD_DIRS_EGL "/home/me/.conan/data/egl/system/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_EGL )
set(CONAN_LIBS_EGL )
set(CONAN_PKG_LIBS_EGL )
set(CONAN_SYSTEM_LIBS_EGL EGL)
set(CONAN_FRAMEWORKS_EGL )
set(CONAN_FRAMEWORKS_FOUND_EGL "")  # Will be filled later
set(CONAN_DEFINES_EGL )
set(CONAN_BUILD_MODULES_PATHS_EGL )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_EGL )

set(CONAN_C_FLAGS_EGL "")
set(CONAN_CXX_FLAGS_EGL "")
set(CONAN_SHARED_LINKER_FLAGS_EGL "")
set(CONAN_EXE_LINKER_FLAGS_EGL "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_EGL_LIST "")
set(CONAN_CXX_FLAGS_EGL_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_EGL_LIST "")
set(CONAN_EXE_LINKER_FLAGS_EGL_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_EGL "${CONAN_FRAMEWORKS_EGL}" "_EGL" "")
# Append to aggregated values variable
set(CONAN_LIBS_EGL ${CONAN_PKG_LIBS_EGL} ${CONAN_SYSTEM_LIBS_EGL} ${CONAN_FRAMEWORKS_FOUND_EGL})


#################
###  DBUS
#################
set(CONAN_DBUS_ROOT "/home/me/.conan/data/dbus/1.12.20/_/_/package/49e9760c162d8683bfdf89a5a87b2db540452d40")
set(CONAN_INCLUDE_DIRS_DBUS "/home/me/.conan/data/dbus/1.12.20/_/_/package/49e9760c162d8683bfdf89a5a87b2db540452d40/include"
			"/home/me/.conan/data/dbus/1.12.20/_/_/package/49e9760c162d8683bfdf89a5a87b2db540452d40/include/dbus-1.0"
			"/home/me/.conan/data/dbus/1.12.20/_/_/package/49e9760c162d8683bfdf89a5a87b2db540452d40/lib/dbus-1.0/include")
set(CONAN_LIB_DIRS_DBUS "/home/me/.conan/data/dbus/1.12.20/_/_/package/49e9760c162d8683bfdf89a5a87b2db540452d40/lib")
set(CONAN_BIN_DIRS_DBUS "/home/me/.conan/data/dbus/1.12.20/_/_/package/49e9760c162d8683bfdf89a5a87b2db540452d40/bin")
set(CONAN_RES_DIRS_DBUS "/home/me/.conan/data/dbus/1.12.20/_/_/package/49e9760c162d8683bfdf89a5a87b2db540452d40/res")
set(CONAN_SRC_DIRS_DBUS )
set(CONAN_BUILD_DIRS_DBUS "/home/me/.conan/data/dbus/1.12.20/_/_/package/49e9760c162d8683bfdf89a5a87b2db540452d40/")
set(CONAN_FRAMEWORK_DIRS_DBUS )
set(CONAN_LIBS_DBUS dbus-1)
set(CONAN_PKG_LIBS_DBUS dbus-1)
set(CONAN_SYSTEM_LIBS_DBUS )
set(CONAN_FRAMEWORKS_DBUS )
set(CONAN_FRAMEWORKS_FOUND_DBUS "")  # Will be filled later
set(CONAN_DEFINES_DBUS )
set(CONAN_BUILD_MODULES_PATHS_DBUS )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_DBUS )

set(CONAN_C_FLAGS_DBUS "")
set(CONAN_CXX_FLAGS_DBUS "")
set(CONAN_SHARED_LINKER_FLAGS_DBUS "")
set(CONAN_EXE_LINKER_FLAGS_DBUS "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_DBUS_LIST "")
set(CONAN_CXX_FLAGS_DBUS_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_DBUS_LIST "")
set(CONAN_EXE_LINKER_FLAGS_DBUS_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_DBUS "${CONAN_FRAMEWORKS_DBUS}" "_DBUS" "")
# Append to aggregated values variable
set(CONAN_LIBS_DBUS ${CONAN_PKG_LIBS_DBUS} ${CONAN_SYSTEM_LIBS_DBUS} ${CONAN_FRAMEWORKS_FOUND_DBUS})


#################
###  LIBICONV
#################
set(CONAN_LIBICONV_ROOT "/home/me/.conan/data/libiconv/1.16/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_LIBICONV "/home/me/.conan/data/libiconv/1.16/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include")
set(CONAN_LIB_DIRS_LIBICONV "/home/me/.conan/data/libiconv/1.16/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_LIBICONV "/home/me/.conan/data/libiconv/1.16/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/bin")
set(CONAN_RES_DIRS_LIBICONV )
set(CONAN_SRC_DIRS_LIBICONV )
set(CONAN_BUILD_DIRS_LIBICONV "/home/me/.conan/data/libiconv/1.16/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_LIBICONV )
set(CONAN_LIBS_LIBICONV iconv charset)
set(CONAN_PKG_LIBS_LIBICONV iconv charset)
set(CONAN_SYSTEM_LIBS_LIBICONV )
set(CONAN_FRAMEWORKS_LIBICONV )
set(CONAN_FRAMEWORKS_FOUND_LIBICONV "")  # Will be filled later
set(CONAN_DEFINES_LIBICONV )
set(CONAN_BUILD_MODULES_PATHS_LIBICONV )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBICONV )

set(CONAN_C_FLAGS_LIBICONV "")
set(CONAN_CXX_FLAGS_LIBICONV "")
set(CONAN_SHARED_LINKER_FLAGS_LIBICONV "")
set(CONAN_EXE_LINKER_FLAGS_LIBICONV "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBICONV_LIST "")
set(CONAN_CXX_FLAGS_LIBICONV_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBICONV_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBICONV_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBICONV "${CONAN_FRAMEWORKS_LIBICONV}" "_LIBICONV" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBICONV ${CONAN_PKG_LIBS_LIBICONV} ${CONAN_SYSTEM_LIBS_LIBICONV} ${CONAN_FRAMEWORKS_FOUND_LIBICONV})


#################
###  FREETYPE
#################
set(CONAN_FREETYPE_ROOT "/home/me/.conan/data/freetype/2.11.1/_/_/package/bca7b8880d98719d556dd526ce612be20a815922")
set(CONAN_INCLUDE_DIRS_FREETYPE "/home/me/.conan/data/freetype/2.11.1/_/_/package/bca7b8880d98719d556dd526ce612be20a815922/include"
			"/home/me/.conan/data/freetype/2.11.1/_/_/package/bca7b8880d98719d556dd526ce612be20a815922/include/freetype2")
set(CONAN_LIB_DIRS_FREETYPE "/home/me/.conan/data/freetype/2.11.1/_/_/package/bca7b8880d98719d556dd526ce612be20a815922/lib")
set(CONAN_BIN_DIRS_FREETYPE "/home/me/.conan/data/freetype/2.11.1/_/_/package/bca7b8880d98719d556dd526ce612be20a815922/bin")
set(CONAN_RES_DIRS_FREETYPE "/home/me/.conan/data/freetype/2.11.1/_/_/package/bca7b8880d98719d556dd526ce612be20a815922/res")
set(CONAN_SRC_DIRS_FREETYPE )
set(CONAN_BUILD_DIRS_FREETYPE "/home/me/.conan/data/freetype/2.11.1/_/_/package/bca7b8880d98719d556dd526ce612be20a815922/"
			"/home/me/.conan/data/freetype/2.11.1/_/_/package/bca7b8880d98719d556dd526ce612be20a815922/lib/cmake")
set(CONAN_FRAMEWORK_DIRS_FREETYPE )
set(CONAN_LIBS_FREETYPE freetype)
set(CONAN_PKG_LIBS_FREETYPE freetype)
set(CONAN_SYSTEM_LIBS_FREETYPE m)
set(CONAN_FRAMEWORKS_FREETYPE )
set(CONAN_FRAMEWORKS_FOUND_FREETYPE "")  # Will be filled later
set(CONAN_DEFINES_FREETYPE )
set(CONAN_BUILD_MODULES_PATHS_FREETYPE )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_FREETYPE )

set(CONAN_C_FLAGS_FREETYPE "")
set(CONAN_CXX_FLAGS_FREETYPE "")
set(CONAN_SHARED_LINKER_FLAGS_FREETYPE "")
set(CONAN_EXE_LINKER_FLAGS_FREETYPE "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_FREETYPE_LIST "")
set(CONAN_CXX_FLAGS_FREETYPE_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_FREETYPE_LIST "")
set(CONAN_EXE_LINKER_FLAGS_FREETYPE_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_FREETYPE "${CONAN_FRAMEWORKS_FREETYPE}" "_FREETYPE" "")
# Append to aggregated values variable
set(CONAN_LIBS_FREETYPE ${CONAN_PKG_LIBS_FREETYPE} ${CONAN_SYSTEM_LIBS_FREETYPE} ${CONAN_FRAMEWORKS_FOUND_FREETYPE})


#################
###  LIBFFI
#################
set(CONAN_LIBFFI_ROOT "/home/me/.conan/data/libffi/3.4.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_LIBFFI "/home/me/.conan/data/libffi/3.4.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include")
set(CONAN_LIB_DIRS_LIBFFI "/home/me/.conan/data/libffi/3.4.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_LIBFFI )
set(CONAN_RES_DIRS_LIBFFI )
set(CONAN_SRC_DIRS_LIBFFI )
set(CONAN_BUILD_DIRS_LIBFFI "/home/me/.conan/data/libffi/3.4.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_LIBFFI )
set(CONAN_LIBS_LIBFFI ffi)
set(CONAN_PKG_LIBS_LIBFFI ffi)
set(CONAN_SYSTEM_LIBS_LIBFFI )
set(CONAN_FRAMEWORKS_LIBFFI )
set(CONAN_FRAMEWORKS_FOUND_LIBFFI "")  # Will be filled later
set(CONAN_DEFINES_LIBFFI "-DFFI_BUILDING")
set(CONAN_BUILD_MODULES_PATHS_LIBFFI )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBFFI "FFI_BUILDING")

set(CONAN_C_FLAGS_LIBFFI "")
set(CONAN_CXX_FLAGS_LIBFFI "")
set(CONAN_SHARED_LINKER_FLAGS_LIBFFI "")
set(CONAN_EXE_LINKER_FLAGS_LIBFFI "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBFFI_LIST "")
set(CONAN_CXX_FLAGS_LIBFFI_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBFFI_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBFFI_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBFFI "${CONAN_FRAMEWORKS_LIBFFI}" "_LIBFFI" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBFFI ${CONAN_PKG_LIBS_LIBFFI} ${CONAN_SYSTEM_LIBS_LIBFFI} ${CONAN_FRAMEWORKS_FOUND_LIBFFI})


#################
###  PCRE
#################
set(CONAN_PCRE_ROOT "/home/me/.conan/data/pcre/8.45/_/_/package/808617580d3a6679a0b80f813490f7baf663198c")
set(CONAN_INCLUDE_DIRS_PCRE "/home/me/.conan/data/pcre/8.45/_/_/package/808617580d3a6679a0b80f813490f7baf663198c/include")
set(CONAN_LIB_DIRS_PCRE "/home/me/.conan/data/pcre/8.45/_/_/package/808617580d3a6679a0b80f813490f7baf663198c/lib")
set(CONAN_BIN_DIRS_PCRE "/home/me/.conan/data/pcre/8.45/_/_/package/808617580d3a6679a0b80f813490f7baf663198c/bin")
set(CONAN_RES_DIRS_PCRE )
set(CONAN_SRC_DIRS_PCRE )
set(CONAN_BUILD_DIRS_PCRE "/home/me/.conan/data/pcre/8.45/_/_/package/808617580d3a6679a0b80f813490f7baf663198c/")
set(CONAN_FRAMEWORK_DIRS_PCRE )
set(CONAN_LIBS_PCRE pcreposix pcre pcre16 pcre32)
set(CONAN_PKG_LIBS_PCRE pcreposix pcre pcre16 pcre32)
set(CONAN_SYSTEM_LIBS_PCRE )
set(CONAN_FRAMEWORKS_PCRE )
set(CONAN_FRAMEWORKS_FOUND_PCRE "")  # Will be filled later
set(CONAN_DEFINES_PCRE "-DPCRE_STATIC=1")
set(CONAN_BUILD_MODULES_PATHS_PCRE )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_PCRE "PCRE_STATIC=1")

set(CONAN_C_FLAGS_PCRE "")
set(CONAN_CXX_FLAGS_PCRE "")
set(CONAN_SHARED_LINKER_FLAGS_PCRE "")
set(CONAN_EXE_LINKER_FLAGS_PCRE "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_PCRE_LIST "")
set(CONAN_CXX_FLAGS_PCRE_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_PCRE_LIST "")
set(CONAN_EXE_LINKER_FLAGS_PCRE_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_PCRE "${CONAN_FRAMEWORKS_PCRE}" "_PCRE" "")
# Append to aggregated values variable
set(CONAN_LIBS_PCRE ${CONAN_PKG_LIBS_PCRE} ${CONAN_SYSTEM_LIBS_PCRE} ${CONAN_FRAMEWORKS_FOUND_PCRE})


#################
###  LIBELF
#################
set(CONAN_LIBELF_ROOT "/home/me/.conan/data/libelf/0.8.13/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_LIBELF "/home/me/.conan/data/libelf/0.8.13/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/libelf"
			"/home/me/.conan/data/libelf/0.8.13/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include")
set(CONAN_LIB_DIRS_LIBELF "/home/me/.conan/data/libelf/0.8.13/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_LIBELF )
set(CONAN_RES_DIRS_LIBELF )
set(CONAN_SRC_DIRS_LIBELF )
set(CONAN_BUILD_DIRS_LIBELF "/home/me/.conan/data/libelf/0.8.13/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_LIBELF )
set(CONAN_LIBS_LIBELF elf)
set(CONAN_PKG_LIBS_LIBELF elf)
set(CONAN_SYSTEM_LIBS_LIBELF )
set(CONAN_FRAMEWORKS_LIBELF )
set(CONAN_FRAMEWORKS_FOUND_LIBELF "")  # Will be filled later
set(CONAN_DEFINES_LIBELF )
set(CONAN_BUILD_MODULES_PATHS_LIBELF )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBELF )

set(CONAN_C_FLAGS_LIBELF "")
set(CONAN_CXX_FLAGS_LIBELF "")
set(CONAN_SHARED_LINKER_FLAGS_LIBELF "")
set(CONAN_EXE_LINKER_FLAGS_LIBELF "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBELF_LIST "")
set(CONAN_CXX_FLAGS_LIBELF_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBELF_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBELF_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBELF "${CONAN_FRAMEWORKS_LIBELF}" "_LIBELF" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBELF ${CONAN_PKG_LIBS_LIBELF} ${CONAN_SYSTEM_LIBS_LIBELF} ${CONAN_FRAMEWORKS_FOUND_LIBELF})


#################
###  LIBMOUNT
#################
set(CONAN_LIBMOUNT_ROOT "/home/me/.conan/data/libmount/2.36.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_LIBMOUNT "/home/me/.conan/data/libmount/2.36.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/libmount/2.36.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/libmount")
set(CONAN_LIB_DIRS_LIBMOUNT "/home/me/.conan/data/libmount/2.36.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_LIBMOUNT )
set(CONAN_RES_DIRS_LIBMOUNT )
set(CONAN_SRC_DIRS_LIBMOUNT )
set(CONAN_BUILD_DIRS_LIBMOUNT "/home/me/.conan/data/libmount/2.36.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_LIBMOUNT )
set(CONAN_LIBS_LIBMOUNT mount blkid)
set(CONAN_PKG_LIBS_LIBMOUNT mount blkid)
set(CONAN_SYSTEM_LIBS_LIBMOUNT )
set(CONAN_FRAMEWORKS_LIBMOUNT )
set(CONAN_FRAMEWORKS_FOUND_LIBMOUNT "")  # Will be filled later
set(CONAN_DEFINES_LIBMOUNT )
set(CONAN_BUILD_MODULES_PATHS_LIBMOUNT )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBMOUNT )

set(CONAN_C_FLAGS_LIBMOUNT "")
set(CONAN_CXX_FLAGS_LIBMOUNT "")
set(CONAN_SHARED_LINKER_FLAGS_LIBMOUNT "")
set(CONAN_EXE_LINKER_FLAGS_LIBMOUNT "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBMOUNT_LIST "")
set(CONAN_CXX_FLAGS_LIBMOUNT_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBMOUNT_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBMOUNT_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBMOUNT "${CONAN_FRAMEWORKS_LIBMOUNT}" "_LIBMOUNT" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBMOUNT ${CONAN_PKG_LIBS_LIBMOUNT} ${CONAN_SYSTEM_LIBS_LIBMOUNT} ${CONAN_FRAMEWORKS_FOUND_LIBMOUNT})


#################
###  LIBSELINUX
#################
set(CONAN_LIBSELINUX_ROOT "/home/me/.conan/data/libselinux/3.3/_/_/package/f0f1b3d0025db3e0af8917e6c9e9483ec01dd046")
set(CONAN_INCLUDE_DIRS_LIBSELINUX "/home/me/.conan/data/libselinux/3.3/_/_/package/f0f1b3d0025db3e0af8917e6c9e9483ec01dd046/include")
set(CONAN_LIB_DIRS_LIBSELINUX "/home/me/.conan/data/libselinux/3.3/_/_/package/f0f1b3d0025db3e0af8917e6c9e9483ec01dd046/lib")
set(CONAN_BIN_DIRS_LIBSELINUX )
set(CONAN_RES_DIRS_LIBSELINUX )
set(CONAN_SRC_DIRS_LIBSELINUX )
set(CONAN_BUILD_DIRS_LIBSELINUX "/home/me/.conan/data/libselinux/3.3/_/_/package/f0f1b3d0025db3e0af8917e6c9e9483ec01dd046/")
set(CONAN_FRAMEWORK_DIRS_LIBSELINUX )
set(CONAN_LIBS_LIBSELINUX selinux sepol)
set(CONAN_PKG_LIBS_LIBSELINUX selinux sepol)
set(CONAN_SYSTEM_LIBS_LIBSELINUX )
set(CONAN_FRAMEWORKS_LIBSELINUX )
set(CONAN_FRAMEWORKS_FOUND_LIBSELINUX "")  # Will be filled later
set(CONAN_DEFINES_LIBSELINUX )
set(CONAN_BUILD_MODULES_PATHS_LIBSELINUX )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBSELINUX )

set(CONAN_C_FLAGS_LIBSELINUX "")
set(CONAN_CXX_FLAGS_LIBSELINUX "")
set(CONAN_SHARED_LINKER_FLAGS_LIBSELINUX "")
set(CONAN_EXE_LINKER_FLAGS_LIBSELINUX "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBSELINUX_LIST "")
set(CONAN_CXX_FLAGS_LIBSELINUX_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBSELINUX_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBSELINUX_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBSELINUX "${CONAN_FRAMEWORKS_LIBSELINUX}" "_LIBSELINUX" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBSELINUX ${CONAN_PKG_LIBS_LIBSELINUX} ${CONAN_SYSTEM_LIBS_LIBSELINUX} ${CONAN_FRAMEWORKS_FOUND_LIBSELINUX})


#################
###  EXPAT
#################
set(CONAN_EXPAT_ROOT "/home/me/.conan/data/expat/2.4.6/_/_/package/859363389e24f9402c19222fd527806e3c413615")
set(CONAN_INCLUDE_DIRS_EXPAT "/home/me/.conan/data/expat/2.4.6/_/_/package/859363389e24f9402c19222fd527806e3c413615/include")
set(CONAN_LIB_DIRS_EXPAT "/home/me/.conan/data/expat/2.4.6/_/_/package/859363389e24f9402c19222fd527806e3c413615/lib")
set(CONAN_BIN_DIRS_EXPAT )
set(CONAN_RES_DIRS_EXPAT )
set(CONAN_SRC_DIRS_EXPAT )
set(CONAN_BUILD_DIRS_EXPAT "/home/me/.conan/data/expat/2.4.6/_/_/package/859363389e24f9402c19222fd527806e3c413615/")
set(CONAN_FRAMEWORK_DIRS_EXPAT )
set(CONAN_LIBS_EXPAT expat)
set(CONAN_PKG_LIBS_EXPAT expat)
set(CONAN_SYSTEM_LIBS_EXPAT )
set(CONAN_FRAMEWORKS_EXPAT )
set(CONAN_FRAMEWORKS_FOUND_EXPAT "")  # Will be filled later
set(CONAN_DEFINES_EXPAT "-DXML_STATIC")
set(CONAN_BUILD_MODULES_PATHS_EXPAT )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_EXPAT "XML_STATIC")

set(CONAN_C_FLAGS_EXPAT "")
set(CONAN_CXX_FLAGS_EXPAT "")
set(CONAN_SHARED_LINKER_FLAGS_EXPAT "")
set(CONAN_EXE_LINKER_FLAGS_EXPAT "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_EXPAT_LIST "")
set(CONAN_CXX_FLAGS_EXPAT_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_EXPAT_LIST "")
set(CONAN_EXE_LINKER_FLAGS_EXPAT_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_EXPAT "${CONAN_FRAMEWORKS_EXPAT}" "_EXPAT" "")
# Append to aggregated values variable
set(CONAN_LIBS_EXPAT ${CONAN_PKG_LIBS_EXPAT} ${CONAN_SYSTEM_LIBS_EXPAT} ${CONAN_FRAMEWORKS_FOUND_EXPAT})


#################
###  LIBUUID
#################
set(CONAN_LIBUUID_ROOT "/home/me/.conan/data/libuuid/1.0.3/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_LIBUUID "/home/me/.conan/data/libuuid/1.0.3/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/libuuid/1.0.3/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/uuid")
set(CONAN_LIB_DIRS_LIBUUID "/home/me/.conan/data/libuuid/1.0.3/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_LIBUUID )
set(CONAN_RES_DIRS_LIBUUID )
set(CONAN_SRC_DIRS_LIBUUID )
set(CONAN_BUILD_DIRS_LIBUUID "/home/me/.conan/data/libuuid/1.0.3/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_LIBUUID )
set(CONAN_LIBS_LIBUUID uuid)
set(CONAN_PKG_LIBS_LIBUUID uuid)
set(CONAN_SYSTEM_LIBS_LIBUUID )
set(CONAN_FRAMEWORKS_LIBUUID )
set(CONAN_FRAMEWORKS_FOUND_LIBUUID "")  # Will be filled later
set(CONAN_DEFINES_LIBUUID )
set(CONAN_BUILD_MODULES_PATHS_LIBUUID )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBUUID )

set(CONAN_C_FLAGS_LIBUUID "")
set(CONAN_CXX_FLAGS_LIBUUID "")
set(CONAN_SHARED_LINKER_FLAGS_LIBUUID "")
set(CONAN_EXE_LINKER_FLAGS_LIBUUID "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBUUID_LIST "")
set(CONAN_CXX_FLAGS_LIBUUID_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBUUID_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBUUID_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBUUID "${CONAN_FRAMEWORKS_LIBUUID}" "_LIBUUID" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBUUID ${CONAN_PKG_LIBS_LIBUUID} ${CONAN_SYSTEM_LIBS_LIBUUID} ${CONAN_FRAMEWORKS_FOUND_LIBUUID})


#################
###  LIBPNG
#################
set(CONAN_LIBPNG_ROOT "/home/me/.conan/data/libpng/1.6.37/_/_/package/d5b3dc27faecfb4eb94086722000dd65bb9e6bff")
set(CONAN_INCLUDE_DIRS_LIBPNG "/home/me/.conan/data/libpng/1.6.37/_/_/package/d5b3dc27faecfb4eb94086722000dd65bb9e6bff/include")
set(CONAN_LIB_DIRS_LIBPNG "/home/me/.conan/data/libpng/1.6.37/_/_/package/d5b3dc27faecfb4eb94086722000dd65bb9e6bff/lib")
set(CONAN_BIN_DIRS_LIBPNG )
set(CONAN_RES_DIRS_LIBPNG )
set(CONAN_SRC_DIRS_LIBPNG )
set(CONAN_BUILD_DIRS_LIBPNG "/home/me/.conan/data/libpng/1.6.37/_/_/package/d5b3dc27faecfb4eb94086722000dd65bb9e6bff/")
set(CONAN_FRAMEWORK_DIRS_LIBPNG )
set(CONAN_LIBS_LIBPNG png16)
set(CONAN_PKG_LIBS_LIBPNG png16)
set(CONAN_SYSTEM_LIBS_LIBPNG m)
set(CONAN_FRAMEWORKS_LIBPNG )
set(CONAN_FRAMEWORKS_FOUND_LIBPNG "")  # Will be filled later
set(CONAN_DEFINES_LIBPNG )
set(CONAN_BUILD_MODULES_PATHS_LIBPNG )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBPNG )

set(CONAN_C_FLAGS_LIBPNG "")
set(CONAN_CXX_FLAGS_LIBPNG "")
set(CONAN_SHARED_LINKER_FLAGS_LIBPNG "")
set(CONAN_EXE_LINKER_FLAGS_LIBPNG "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBPNG_LIST "")
set(CONAN_CXX_FLAGS_LIBPNG_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBPNG_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBPNG_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBPNG "${CONAN_FRAMEWORKS_LIBPNG}" "_LIBPNG" "")
# Append to aggregated values variable
set(CONAN_LIBS_LIBPNG ${CONAN_PKG_LIBS_LIBPNG} ${CONAN_SYSTEM_LIBS_LIBPNG} ${CONAN_FRAMEWORKS_FOUND_LIBPNG})


#################
###  BROTLI
#################
set(CONAN_BROTLI_ROOT "/home/me/.conan/data/brotli/1.0.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_BROTLI "/home/me/.conan/data/brotli/1.0.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/brotli/1.0.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/brotli")
set(CONAN_LIB_DIRS_BROTLI "/home/me/.conan/data/brotli/1.0.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_BROTLI )
set(CONAN_RES_DIRS_BROTLI )
set(CONAN_SRC_DIRS_BROTLI )
set(CONAN_BUILD_DIRS_BROTLI "/home/me/.conan/data/brotli/1.0.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_BROTLI )
set(CONAN_LIBS_BROTLI brotlidec-static brotlienc-static brotlicommon-static)
set(CONAN_PKG_LIBS_BROTLI brotlidec-static brotlienc-static brotlicommon-static)
set(CONAN_SYSTEM_LIBS_BROTLI m)
set(CONAN_FRAMEWORKS_BROTLI )
set(CONAN_FRAMEWORKS_FOUND_BROTLI "")  # Will be filled later
set(CONAN_DEFINES_BROTLI )
set(CONAN_BUILD_MODULES_PATHS_BROTLI )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_BROTLI )

set(CONAN_C_FLAGS_BROTLI "")
set(CONAN_CXX_FLAGS_BROTLI "")
set(CONAN_SHARED_LINKER_FLAGS_BROTLI "")
set(CONAN_EXE_LINKER_FLAGS_BROTLI "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_BROTLI_LIST "")
set(CONAN_CXX_FLAGS_BROTLI_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_BROTLI_LIST "")
set(CONAN_EXE_LINKER_FLAGS_BROTLI_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_BROTLI "${CONAN_FRAMEWORKS_BROTLI}" "_BROTLI" "")
# Append to aggregated values variable
set(CONAN_LIBS_BROTLI ${CONAN_PKG_LIBS_BROTLI} ${CONAN_SYSTEM_LIBS_BROTLI} ${CONAN_FRAMEWORKS_FOUND_BROTLI})


#################
###  PCRE2
#################
set(CONAN_PCRE2_ROOT "/home/me/.conan/data/pcre2/10.37/_/_/package/2a1d707302ad380d0a87e831845f2544cf9ab775")
set(CONAN_INCLUDE_DIRS_PCRE2 "/home/me/.conan/data/pcre2/10.37/_/_/package/2a1d707302ad380d0a87e831845f2544cf9ab775/include")
set(CONAN_LIB_DIRS_PCRE2 "/home/me/.conan/data/pcre2/10.37/_/_/package/2a1d707302ad380d0a87e831845f2544cf9ab775/lib")
set(CONAN_BIN_DIRS_PCRE2 "/home/me/.conan/data/pcre2/10.37/_/_/package/2a1d707302ad380d0a87e831845f2544cf9ab775/bin")
set(CONAN_RES_DIRS_PCRE2 )
set(CONAN_SRC_DIRS_PCRE2 )
set(CONAN_BUILD_DIRS_PCRE2 "/home/me/.conan/data/pcre2/10.37/_/_/package/2a1d707302ad380d0a87e831845f2544cf9ab775/")
set(CONAN_FRAMEWORK_DIRS_PCRE2 )
set(CONAN_LIBS_PCRE2 pcre2-posix pcre2-8 pcre2-16 pcre2-32)
set(CONAN_PKG_LIBS_PCRE2 pcre2-posix pcre2-8 pcre2-16 pcre2-32)
set(CONAN_SYSTEM_LIBS_PCRE2 )
set(CONAN_FRAMEWORKS_PCRE2 )
set(CONAN_FRAMEWORKS_FOUND_PCRE2 "")  # Will be filled later
set(CONAN_DEFINES_PCRE2 "-DPCRE2_STATIC")
set(CONAN_BUILD_MODULES_PATHS_PCRE2 )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_PCRE2 "PCRE2_STATIC")

set(CONAN_C_FLAGS_PCRE2 "")
set(CONAN_CXX_FLAGS_PCRE2 "")
set(CONAN_SHARED_LINKER_FLAGS_PCRE2 "")
set(CONAN_EXE_LINKER_FLAGS_PCRE2 "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_PCRE2_LIST "")
set(CONAN_CXX_FLAGS_PCRE2_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_PCRE2_LIST "")
set(CONAN_EXE_LINKER_FLAGS_PCRE2_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_PCRE2 "${CONAN_FRAMEWORKS_PCRE2}" "_PCRE2" "")
# Append to aggregated values variable
set(CONAN_LIBS_PCRE2 ${CONAN_PKG_LIBS_PCRE2} ${CONAN_SYSTEM_LIBS_PCRE2} ${CONAN_FRAMEWORKS_FOUND_PCRE2})


#################
###  ZLIB
#################
set(CONAN_ZLIB_ROOT "/home/me/.conan/data/zlib/1.2.11/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1")
set(CONAN_INCLUDE_DIRS_ZLIB "/home/me/.conan/data/zlib/1.2.11/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include")
set(CONAN_LIB_DIRS_ZLIB "/home/me/.conan/data/zlib/1.2.11/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib")
set(CONAN_BIN_DIRS_ZLIB )
set(CONAN_RES_DIRS_ZLIB )
set(CONAN_SRC_DIRS_ZLIB )
set(CONAN_BUILD_DIRS_ZLIB "/home/me/.conan/data/zlib/1.2.11/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/")
set(CONAN_FRAMEWORK_DIRS_ZLIB )
set(CONAN_LIBS_ZLIB z)
set(CONAN_PKG_LIBS_ZLIB z)
set(CONAN_SYSTEM_LIBS_ZLIB )
set(CONAN_FRAMEWORKS_ZLIB )
set(CONAN_FRAMEWORKS_FOUND_ZLIB "")  # Will be filled later
set(CONAN_DEFINES_ZLIB )
set(CONAN_BUILD_MODULES_PATHS_ZLIB )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_ZLIB )

set(CONAN_C_FLAGS_ZLIB "")
set(CONAN_CXX_FLAGS_ZLIB "")
set(CONAN_SHARED_LINKER_FLAGS_ZLIB "")
set(CONAN_EXE_LINKER_FLAGS_ZLIB "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_ZLIB_LIST "")
set(CONAN_CXX_FLAGS_ZLIB_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_ZLIB_LIST "")
set(CONAN_EXE_LINKER_FLAGS_ZLIB_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_ZLIB "${CONAN_FRAMEWORKS_ZLIB}" "_ZLIB" "")
# Append to aggregated values variable
set(CONAN_LIBS_ZLIB ${CONAN_PKG_LIBS_ZLIB} ${CONAN_SYSTEM_LIBS_ZLIB} ${CONAN_FRAMEWORKS_FOUND_ZLIB})


#################
###  BZIP2
#################
set(CONAN_BZIP2_ROOT "/home/me/.conan/data/bzip2/1.0.8/_/_/package/91a8b22c2c5a149bc617cfc06cdd21bf23b12567")
set(CONAN_INCLUDE_DIRS_BZIP2 "/home/me/.conan/data/bzip2/1.0.8/_/_/package/91a8b22c2c5a149bc617cfc06cdd21bf23b12567/include")
set(CONAN_LIB_DIRS_BZIP2 "/home/me/.conan/data/bzip2/1.0.8/_/_/package/91a8b22c2c5a149bc617cfc06cdd21bf23b12567/lib")
set(CONAN_BIN_DIRS_BZIP2 "/home/me/.conan/data/bzip2/1.0.8/_/_/package/91a8b22c2c5a149bc617cfc06cdd21bf23b12567/bin")
set(CONAN_RES_DIRS_BZIP2 )
set(CONAN_SRC_DIRS_BZIP2 )
set(CONAN_BUILD_DIRS_BZIP2 "/home/me/.conan/data/bzip2/1.0.8/_/_/package/91a8b22c2c5a149bc617cfc06cdd21bf23b12567/"
			"/home/me/.conan/data/bzip2/1.0.8/_/_/package/91a8b22c2c5a149bc617cfc06cdd21bf23b12567/lib/cmake")
set(CONAN_FRAMEWORK_DIRS_BZIP2 )
set(CONAN_LIBS_BZIP2 bz2)
set(CONAN_PKG_LIBS_BZIP2 bz2)
set(CONAN_SYSTEM_LIBS_BZIP2 )
set(CONAN_FRAMEWORKS_BZIP2 )
set(CONAN_FRAMEWORKS_FOUND_BZIP2 "")  # Will be filled later
set(CONAN_DEFINES_BZIP2 )
set(CONAN_BUILD_MODULES_PATHS_BZIP2 )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_BZIP2 )

set(CONAN_C_FLAGS_BZIP2 "")
set(CONAN_CXX_FLAGS_BZIP2 "")
set(CONAN_SHARED_LINKER_FLAGS_BZIP2 "")
set(CONAN_EXE_LINKER_FLAGS_BZIP2 "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_BZIP2_LIST "")
set(CONAN_CXX_FLAGS_BZIP2_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_BZIP2_LIST "")
set(CONAN_EXE_LINKER_FLAGS_BZIP2_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_BZIP2 "${CONAN_FRAMEWORKS_BZIP2}" "_BZIP2" "")
# Append to aggregated values variable
set(CONAN_LIBS_BZIP2 ${CONAN_PKG_LIBS_BZIP2} ${CONAN_SYSTEM_LIBS_BZIP2} ${CONAN_FRAMEWORKS_FOUND_BZIP2})


### Definition of global aggregated variables ###

set(CONAN_PACKAGE_NAME None)
set(CONAN_PACKAGE_VERSION None)

set(CONAN_SETTINGS_ARCH "x86_64")
set(CONAN_SETTINGS_ARCH_BUILD "x86_64")
set(CONAN_SETTINGS_BUILD_TYPE "Release")
set(CONAN_SETTINGS_COMPILER "gcc")
set(CONAN_SETTINGS_COMPILER_LIBCXX "libstdc++11")
set(CONAN_SETTINGS_COMPILER_VERSION "10")
set(CONAN_SETTINGS_OS "Linux")
set(CONAN_SETTINGS_OS_BUILD "Linux")

set(CONAN_DEPENDENCIES allegro5 glm asio nlohmann_json spdlog implot serial freeimage minimp3 openal physfs opusfile theora gtk glu pulseaudio fmt imgui openjpeg openexr libraw jxrlib libalsa openssl gdk-pixbuf at-spi2-atk libepoxy pango libsndfile libcap lcms jasper libtiff flac vorbis opus cairo at-spi2-core atk libxml2 harfbuzz fribidi libjpeg libwebp libdeflate xz_utils jbig zstd ogg opengl xorg glib pixman lzo fontconfig egl dbus libiconv freetype libffi pcre libelf libmount libselinux expat libuuid libpng brotli pcre2 zlib bzip2)
# Storing original command line args (CMake helper) flags
set(CONAN_CMD_CXX_FLAGS ${CONAN_CXX_FLAGS})

set(CONAN_CMD_SHARED_LINKER_FLAGS ${CONAN_SHARED_LINKER_FLAGS})
set(CONAN_CMD_C_FLAGS ${CONAN_C_FLAGS})
# Defining accumulated conan variables for all deps

set(CONAN_INCLUDE_DIRS "/home/me/.conan/data/allegro5/5.2.7/_/_/package/d21d59d0f83bcf9391b4ac65181820ab23686472/include"
			"/home/me/.conan/data/glm/0.9.9.8/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/me/.conan/data/asio/1.22.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/me/.conan/data/nlohmann_json/3.10.5/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/me/.conan/data/spdlog/1.9.2/_/_/package/ff0052ef32311f77d1f5378b4fcec36de434e6b3/include"
			"/home/me/.conan/data/implot/0.13/_/_/package/d7aeea1a4dcb424e6acf76ddc84e5c310ae60ec2/include"
			"/home/me/.conan/data/serial/1.2.1/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/include"
			"/home/me/.conan/data/freeimage/3.18.0/_/_/package/6877c63756d46da3ec08d6fbb3f47cb817f5584b/include"
			"/home/me/.conan/data/minimp3/20200304/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/me/.conan/data/openal/1.21.1/_/_/package/089c95a463e49c2c916b03846f45156880846725/include"
			"/home/me/.conan/data/openal/1.21.1/_/_/package/089c95a463e49c2c916b03846f45156880846725/include/AL"
			"/home/me/.conan/data/physfs/3.0.2/_/_/package/e70569aa908f21a93abd57c3400143d1e003b8b0/include"
			"/home/me/.conan/data/opusfile/0.12/_/_/package/0ba6dc1ba38ca9e5afd7224827302f0480210c79/include"
			"/home/me/.conan/data/opusfile/0.12/_/_/package/0ba6dc1ba38ca9e5afd7224827302f0480210c79/include/opus"
			"/home/me/.conan/data/theora/1.1.1/_/_/package/6e4bc3ab815736fa7c637f569f101e1193ddb5da/include"
			"/home/me/.conan/data/gtk/3.24.24/_/_/package/ed67e3969cd44576f96209b87e6ede3fbf4e71f9/include/gail-3.0"
			"/home/me/.conan/data/gtk/3.24.24/_/_/package/ed67e3969cd44576f96209b87e6ede3fbf4e71f9/include/gtk-3.0"
			"/home/me/.conan/data/pulseaudio/14.2/_/_/package/c63e3687eb4370c7bcc632afbe163773ea0d1d6f/include"
			"/home/me/.conan/data/fmt/8.0.1/_/_/package/bb317a1f4f7069078e967719a5c585f83cd078c2/include"
			"/home/me/.conan/data/imgui/1.87/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/include"
			"/home/me/.conan/data/openjpeg/2.4.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/openjpeg/2.4.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/openjpeg-2.4"
			"/home/me/.conan/data/openexr/2.5.7/_/_/package/1125ca08946d3f74d1579e093edb507405c02a91/include"
			"/home/me/.conan/data/openexr/2.5.7/_/_/package/1125ca08946d3f74d1579e093edb507405c02a91/include/OpenEXR"
			"/home/me/.conan/data/libraw/0.20.2/_/_/package/2fa4e3a2c714d892f0f5d0f5ebe7d148372a2891/include"
			"/home/me/.conan/data/jxrlib/cci.20170615/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/libalsa/1.2.5.1/_/_/package/51e96d1346424f5ef647616231906873cd225eb3/include"
			"/home/me/.conan/data/openssl/1.1.1m/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/gdk-pixbuf/2.42.4/_/_/package/a7f9c55d5c7c441d0573807dbac8fd4b956e5b65/include/gdk-pixbuf-2.0"
			"/home/me/.conan/data/at-spi2-atk/2.38.0/_/_/package/39c8c4af65231dbd723a3c5296e74e58dfae3388/include/at-spi2-atk/2.0"
			"/home/me/.conan/data/libepoxy/1.5.9/_/_/package/41e9f4d599573e8c930aa096f36cf30cacc41823/include"
			"/home/me/.conan/data/pango/1.49.1/_/_/package/5c40613d33c17f067d2023a7c1adcbe072a86946/include"
			"/home/me/.conan/data/pango/1.49.1/_/_/package/5c40613d33c17f067d2023a7c1adcbe072a86946/include/pango-1.0"
			"/home/me/.conan/data/libsndfile/1.0.31/_/_/package/a510e4d90c1a5085d4dd59083f793052fc083872/include"
			"/home/me/.conan/data/libcap/2.62/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/lcms/2.12/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/jasper/2.0.33/_/_/package/6de8eee19e177251528129fa9bdc05bbfce2fea2/include"
			"/home/me/.conan/data/libtiff/4.3.0/_/_/package/f82ef25da4e9f661f118d3aa44ad6c1bfef0bc79/include"
			"/home/me/.conan/data/flac/1.3.3/_/_/package/f73e61b9ac5c8f3043ccfbe374875bbd9a7376b1/include"
			"/home/me/.conan/data/vorbis/1.3.7/_/_/package/6e4bc3ab815736fa7c637f569f101e1193ddb5da/include"
			"/home/me/.conan/data/opus/1.3.1/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/opus/1.3.1/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/opus"
			"/home/me/.conan/data/cairo/1.17.4/_/_/package/f75004406220e51606a0b4a3d368ec0431589de7/include"
			"/home/me/.conan/data/cairo/1.17.4/_/_/package/f75004406220e51606a0b4a3d368ec0431589de7/include/cairo"
			"/home/me/.conan/data/at-spi2-core/2.42.0/_/_/package/280465cd8a5ce4e0fb71526b5dac255f335d870b/include/at-spi-2.0"
			"/home/me/.conan/data/atk/2.36.0/_/_/package/e2e2120b6efb3881ae6b1454b8ce084b884b1c65/include/atk-1.0"
			"/home/me/.conan/data/libxml2/2.9.12/_/_/package/f9bf12b05a917e3b694bc35eb5037c71fbf6b7ca/include"
			"/home/me/.conan/data/libxml2/2.9.12/_/_/package/f9bf12b05a917e3b694bc35eb5037c71fbf6b7ca/include/libxml2"
			"/home/me/.conan/data/harfbuzz/3.2.0/_/_/package/7a5bb427e9154bf4923bf7ee0a534d6d536731c7/include"
			"/home/me/.conan/data/harfbuzz/3.2.0/_/_/package/7a5bb427e9154bf4923bf7ee0a534d6d536731c7/include/harfbuzz"
			"/home/me/.conan/data/fribidi/1.0.10/_/_/package/2efda50f82a7d03560e19005db8e932cb0aafd09/include"
			"/home/me/.conan/data/fribidi/1.0.10/_/_/package/2efda50f82a7d03560e19005db8e932cb0aafd09/include/fribidi"
			"/home/me/.conan/data/libjpeg/9d/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/libwebp/1.2.2/_/_/package/abc00ad0249e9242a1b4cfef4dc265e67c782e32/include"
			"/home/me/.conan/data/libdeflate/1.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/xz_utils/5.2.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/jbig/20160605/_/_/package/5dedf41b83996f2663697c4c548617b81e83ca54/include"
			"/home/me/.conan/data/zstd/1.5.2/_/_/package/f95595cf9a05caa71e0ee161277907de90f9722f/include"
			"/home/me/.conan/data/ogg/1.3.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/usr/include/uuid"
			"/usr/include/freetype2"
			"/usr/include/libpng16"
			"/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/include"
			"/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/include/gio-unix-2.0"
			"/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/include/glib-2.0"
			"/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/lib/glib-2.0/include"
			"/home/me/.conan/data/pixman/0.40.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/pixman/0.40.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/pixman-1"
			"/home/me/.conan/data/lzo/2.10/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/lzo/2.10/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/lzo"
			"/home/me/.conan/data/fontconfig/2.13.93/_/_/package/ebf14a7c2e256d19a84a210a821beaa67f0a0a9c/include"
			"/home/me/.conan/data/dbus/1.12.20/_/_/package/49e9760c162d8683bfdf89a5a87b2db540452d40/include"
			"/home/me/.conan/data/dbus/1.12.20/_/_/package/49e9760c162d8683bfdf89a5a87b2db540452d40/include/dbus-1.0"
			"/home/me/.conan/data/dbus/1.12.20/_/_/package/49e9760c162d8683bfdf89a5a87b2db540452d40/lib/dbus-1.0/include"
			"/home/me/.conan/data/libiconv/1.16/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/freetype/2.11.1/_/_/package/bca7b8880d98719d556dd526ce612be20a815922/include"
			"/home/me/.conan/data/freetype/2.11.1/_/_/package/bca7b8880d98719d556dd526ce612be20a815922/include/freetype2"
			"/home/me/.conan/data/libffi/3.4.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/pcre/8.45/_/_/package/808617580d3a6679a0b80f813490f7baf663198c/include"
			"/home/me/.conan/data/libelf/0.8.13/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/libelf"
			"/home/me/.conan/data/libelf/0.8.13/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/libmount/2.36.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/libmount/2.36.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/libmount"
			"/home/me/.conan/data/libselinux/3.3/_/_/package/f0f1b3d0025db3e0af8917e6c9e9483ec01dd046/include"
			"/home/me/.conan/data/expat/2.4.6/_/_/package/859363389e24f9402c19222fd527806e3c413615/include"
			"/home/me/.conan/data/libuuid/1.0.3/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/libuuid/1.0.3/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/uuid"
			"/home/me/.conan/data/libpng/1.6.37/_/_/package/d5b3dc27faecfb4eb94086722000dd65bb9e6bff/include"
			"/home/me/.conan/data/brotli/1.0.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/brotli/1.0.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include/brotli"
			"/home/me/.conan/data/pcre2/10.37/_/_/package/2a1d707302ad380d0a87e831845f2544cf9ab775/include"
			"/home/me/.conan/data/zlib/1.2.11/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/include"
			"/home/me/.conan/data/bzip2/1.0.8/_/_/package/91a8b22c2c5a149bc617cfc06cdd21bf23b12567/include" ${CONAN_INCLUDE_DIRS})
set(CONAN_LIB_DIRS "/home/me/.conan/data/allegro5/5.2.7/_/_/package/d21d59d0f83bcf9391b4ac65181820ab23686472/lib"
			"/home/me/.conan/data/spdlog/1.9.2/_/_/package/ff0052ef32311f77d1f5378b4fcec36de434e6b3/lib"
			"/home/me/.conan/data/implot/0.13/_/_/package/d7aeea1a4dcb424e6acf76ddc84e5c310ae60ec2/lib"
			"/home/me/.conan/data/serial/1.2.1/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/lib"
			"/home/me/.conan/data/freeimage/3.18.0/_/_/package/6877c63756d46da3ec08d6fbb3f47cb817f5584b/lib"
			"/home/me/.conan/data/openal/1.21.1/_/_/package/089c95a463e49c2c916b03846f45156880846725/lib"
			"/home/me/.conan/data/physfs/3.0.2/_/_/package/e70569aa908f21a93abd57c3400143d1e003b8b0/lib"
			"/home/me/.conan/data/opusfile/0.12/_/_/package/0ba6dc1ba38ca9e5afd7224827302f0480210c79/lib"
			"/home/me/.conan/data/theora/1.1.1/_/_/package/6e4bc3ab815736fa7c637f569f101e1193ddb5da/lib"
			"/home/me/.conan/data/gtk/3.24.24/_/_/package/ed67e3969cd44576f96209b87e6ede3fbf4e71f9/lib"
			"/home/me/.conan/data/pulseaudio/14.2/_/_/package/c63e3687eb4370c7bcc632afbe163773ea0d1d6f/lib"
			"/home/me/.conan/data/pulseaudio/14.2/_/_/package/c63e3687eb4370c7bcc632afbe163773ea0d1d6f/lib/pulseaudio"
			"/home/me/.conan/data/fmt/8.0.1/_/_/package/bb317a1f4f7069078e967719a5c585f83cd078c2/lib"
			"/home/me/.conan/data/imgui/1.87/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/lib"
			"/home/me/.conan/data/openjpeg/2.4.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/openexr/2.5.7/_/_/package/1125ca08946d3f74d1579e093edb507405c02a91/lib"
			"/home/me/.conan/data/libraw/0.20.2/_/_/package/2fa4e3a2c714d892f0f5d0f5ebe7d148372a2891/lib"
			"/home/me/.conan/data/jxrlib/cci.20170615/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/libalsa/1.2.5.1/_/_/package/51e96d1346424f5ef647616231906873cd225eb3/lib"
			"/home/me/.conan/data/openssl/1.1.1m/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/gdk-pixbuf/2.42.4/_/_/package/a7f9c55d5c7c441d0573807dbac8fd4b956e5b65/lib"
			"/home/me/.conan/data/at-spi2-atk/2.38.0/_/_/package/39c8c4af65231dbd723a3c5296e74e58dfae3388/lib"
			"/home/me/.conan/data/libepoxy/1.5.9/_/_/package/41e9f4d599573e8c930aa096f36cf30cacc41823/lib"
			"/home/me/.conan/data/pango/1.49.1/_/_/package/5c40613d33c17f067d2023a7c1adcbe072a86946/lib"
			"/home/me/.conan/data/libsndfile/1.0.31/_/_/package/a510e4d90c1a5085d4dd59083f793052fc083872/lib"
			"/home/me/.conan/data/libcap/2.62/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/lcms/2.12/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/jasper/2.0.33/_/_/package/6de8eee19e177251528129fa9bdc05bbfce2fea2/lib"
			"/home/me/.conan/data/libtiff/4.3.0/_/_/package/f82ef25da4e9f661f118d3aa44ad6c1bfef0bc79/lib"
			"/home/me/.conan/data/flac/1.3.3/_/_/package/f73e61b9ac5c8f3043ccfbe374875bbd9a7376b1/lib"
			"/home/me/.conan/data/vorbis/1.3.7/_/_/package/6e4bc3ab815736fa7c637f569f101e1193ddb5da/lib"
			"/home/me/.conan/data/opus/1.3.1/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/cairo/1.17.4/_/_/package/f75004406220e51606a0b4a3d368ec0431589de7/lib"
			"/home/me/.conan/data/at-spi2-core/2.42.0/_/_/package/280465cd8a5ce4e0fb71526b5dac255f335d870b/lib"
			"/home/me/.conan/data/atk/2.36.0/_/_/package/e2e2120b6efb3881ae6b1454b8ce084b884b1c65/lib"
			"/home/me/.conan/data/libxml2/2.9.12/_/_/package/f9bf12b05a917e3b694bc35eb5037c71fbf6b7ca/lib"
			"/home/me/.conan/data/harfbuzz/3.2.0/_/_/package/7a5bb427e9154bf4923bf7ee0a534d6d536731c7/lib"
			"/home/me/.conan/data/fribidi/1.0.10/_/_/package/2efda50f82a7d03560e19005db8e932cb0aafd09/lib"
			"/home/me/.conan/data/libjpeg/9d/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/libwebp/1.2.2/_/_/package/abc00ad0249e9242a1b4cfef4dc265e67c782e32/lib"
			"/home/me/.conan/data/libdeflate/1.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/xz_utils/5.2.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/jbig/20160605/_/_/package/5dedf41b83996f2663697c4c548617b81e83ca54/lib"
			"/home/me/.conan/data/zstd/1.5.2/_/_/package/f95595cf9a05caa71e0ee161277907de90f9722f/lib"
			"/home/me/.conan/data/ogg/1.3.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/lib"
			"/home/me/.conan/data/pixman/0.40.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/lzo/2.10/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/fontconfig/2.13.93/_/_/package/ebf14a7c2e256d19a84a210a821beaa67f0a0a9c/lib"
			"/home/me/.conan/data/dbus/1.12.20/_/_/package/49e9760c162d8683bfdf89a5a87b2db540452d40/lib"
			"/home/me/.conan/data/libiconv/1.16/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/freetype/2.11.1/_/_/package/bca7b8880d98719d556dd526ce612be20a815922/lib"
			"/home/me/.conan/data/libffi/3.4.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/pcre/8.45/_/_/package/808617580d3a6679a0b80f813490f7baf663198c/lib"
			"/home/me/.conan/data/libelf/0.8.13/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/libmount/2.36.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/libselinux/3.3/_/_/package/f0f1b3d0025db3e0af8917e6c9e9483ec01dd046/lib"
			"/home/me/.conan/data/expat/2.4.6/_/_/package/859363389e24f9402c19222fd527806e3c413615/lib"
			"/home/me/.conan/data/libuuid/1.0.3/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/libpng/1.6.37/_/_/package/d5b3dc27faecfb4eb94086722000dd65bb9e6bff/lib"
			"/home/me/.conan/data/brotli/1.0.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/pcre2/10.37/_/_/package/2a1d707302ad380d0a87e831845f2544cf9ab775/lib"
			"/home/me/.conan/data/zlib/1.2.11/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/lib"
			"/home/me/.conan/data/bzip2/1.0.8/_/_/package/91a8b22c2c5a149bc617cfc06cdd21bf23b12567/lib" ${CONAN_LIB_DIRS})
set(CONAN_BIN_DIRS "/home/me/.conan/data/gtk/3.24.24/_/_/package/ed67e3969cd44576f96209b87e6ede3fbf4e71f9/bin"
			"/home/me/.conan/data/pulseaudio/14.2/_/_/package/c63e3687eb4370c7bcc632afbe163773ea0d1d6f/bin"
			"/home/me/.conan/data/imgui/1.87/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/bin"
			"/home/me/.conan/data/libalsa/1.2.5.1/_/_/package/51e96d1346424f5ef647616231906873cd225eb3/bin"
			"/home/me/.conan/data/openssl/1.1.1m/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/bin"
			"/home/me/.conan/data/gdk-pixbuf/2.42.4/_/_/package/a7f9c55d5c7c441d0573807dbac8fd4b956e5b65/bin"
			"/home/me/.conan/data/libsndfile/1.0.31/_/_/package/a510e4d90c1a5085d4dd59083f793052fc083872/bin"
			"/home/me/.conan/data/flac/1.3.3/_/_/package/f73e61b9ac5c8f3043ccfbe374875bbd9a7376b1/bin"
			"/home/me/.conan/data/cairo/1.17.4/_/_/package/f75004406220e51606a0b4a3d368ec0431589de7/bin"
			"/home/me/.conan/data/at-spi2-core/2.42.0/_/_/package/280465cd8a5ce4e0fb71526b5dac255f335d870b/bin"
			"/home/me/.conan/data/atk/2.36.0/_/_/package/e2e2120b6efb3881ae6b1454b8ce084b884b1c65/bin"
			"/home/me/.conan/data/libxml2/2.9.12/_/_/package/f9bf12b05a917e3b694bc35eb5037c71fbf6b7ca/bin"
			"/home/me/.conan/data/xz_utils/5.2.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/bin"
			"/home/me/.conan/data/jbig/20160605/_/_/package/5dedf41b83996f2663697c4c548617b81e83ca54/bin"
			"/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/bin"
			"/home/me/.conan/data/fontconfig/2.13.93/_/_/package/ebf14a7c2e256d19a84a210a821beaa67f0a0a9c/bin"
			"/home/me/.conan/data/dbus/1.12.20/_/_/package/49e9760c162d8683bfdf89a5a87b2db540452d40/bin"
			"/home/me/.conan/data/libiconv/1.16/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/bin"
			"/home/me/.conan/data/freetype/2.11.1/_/_/package/bca7b8880d98719d556dd526ce612be20a815922/bin"
			"/home/me/.conan/data/pcre/8.45/_/_/package/808617580d3a6679a0b80f813490f7baf663198c/bin"
			"/home/me/.conan/data/pcre2/10.37/_/_/package/2a1d707302ad380d0a87e831845f2544cf9ab775/bin"
			"/home/me/.conan/data/bzip2/1.0.8/_/_/package/91a8b22c2c5a149bc617cfc06cdd21bf23b12567/bin" ${CONAN_BIN_DIRS})
set(CONAN_RES_DIRS "/home/me/.conan/data/gtk/3.24.24/_/_/package/ed67e3969cd44576f96209b87e6ede3fbf4e71f9/res"
			"/home/me/.conan/data/imgui/1.87/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/res"
			"/home/me/.conan/data/libalsa/1.2.5.1/_/_/package/51e96d1346424f5ef647616231906873cd225eb3/res"
			"/home/me/.conan/data/at-spi2-core/2.42.0/_/_/package/280465cd8a5ce4e0fb71526b5dac255f335d870b/res"
			"/home/me/.conan/data/libjpeg/9d/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/res"
			"/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/res"
			"/home/me/.conan/data/dbus/1.12.20/_/_/package/49e9760c162d8683bfdf89a5a87b2db540452d40/res"
			"/home/me/.conan/data/freetype/2.11.1/_/_/package/bca7b8880d98719d556dd526ce612be20a815922/res" ${CONAN_RES_DIRS})
set(CONAN_FRAMEWORK_DIRS  ${CONAN_FRAMEWORK_DIRS})
set(CONAN_LIBS allegro_monolith-static spdlog implot serial freeimageplus freeimage openal physfs opusurl opusfile theora theoraenc theoradec gailutil-3 gtk-3 gdk-3 pulse-simple pulse pulsecommon-14.2 fmt imgui openjp2 IlmImfUtil-2_5 IlmImf-2_5 Imath-2_5 Half-2_5 IexMath-2_5 IlmThread-2_5 Iex-2_5 raw jxrglue jpegxr asound ssl crypto gdk_pixbuf-2.0 atk-bridge-2.0 epoxy pangoxft-1.0 pangocairo-1.0 pangoft2-1.0 pango-1.0 sndfile cap lcms2 jasper tiffxx tiff FLAC++ FLAC vorbisenc vorbisfile vorbis opus cairo-gobject cairo-script-interpreter cairo atspi atk-1.0 xml2 harfbuzz fribidi jpeg webpdecoder webpdemux webpmux webp deflate lzma jbig zstd ogg gthread-2.0 gio-2.0 gmodule-2.0 gobject-2.0 glib-2.0 pixman-1 lzo2 fontconfig dbus-1 iconv charset freetype ffi pcreposix pcre pcre16 pcre32 elf mount blkid selinux sepol expat uuid png16 brotlidec-static brotlienc-static brotlicommon-static pcre2-posix pcre2-8 pcre2-16 pcre2-32 z bz2 ${CONAN_LIBS})
set(CONAN_PKG_LIBS allegro_monolith-static spdlog implot serial freeimageplus freeimage openal physfs opusurl opusfile theora theoraenc theoradec gailutil-3 gtk-3 gdk-3 pulse-simple pulse pulsecommon-14.2 fmt imgui openjp2 IlmImfUtil-2_5 IlmImf-2_5 Imath-2_5 Half-2_5 IexMath-2_5 IlmThread-2_5 Iex-2_5 raw jxrglue jpegxr asound ssl crypto gdk_pixbuf-2.0 atk-bridge-2.0 epoxy pangoxft-1.0 pangocairo-1.0 pangoft2-1.0 pango-1.0 sndfile cap lcms2 jasper tiffxx tiff FLAC++ FLAC vorbisenc vorbisfile vorbis opus cairo-gobject cairo-script-interpreter cairo atspi atk-1.0 xml2 harfbuzz fribidi jpeg webpdecoder webpdemux webpmux webp deflate lzma jbig zstd ogg gthread-2.0 gio-2.0 gmodule-2.0 gobject-2.0 glib-2.0 pixman-1 lzo2 fontconfig dbus-1 iconv charset freetype ffi pcreposix pcre pcre16 pcre32 elf mount blkid selinux sepol expat uuid png16 brotlidec-static brotlienc-static brotlicommon-static pcre2-posix pcre2-8 pcre2-16 pcre2-32 z bz2 ${CONAN_PKG_LIBS})
set(CONAN_SYSTEM_LIBS GLU rt stdc++ GL X11 X11-xcb xcb fontenc ICE SM Xau Xaw7 Xt Xcomposite Xcursor Xdamage Xfixes Xdmcp Xext Xft Xi Xinerama xkbfile Xmu Xmuu Xpm Xrandr Xrender XRes Xss Xtst Xv XvMC Xxf86vm xcb-xkb xcb-icccm xcb-image xcb-shm xcb-keysyms xcb-randr xcb-render xcb-render-util xcb-shape xcb-sync xcb-xfixes xcb-xinerama xcb-util xcb-dri3 uuid resolv dl pthread EGL m ${CONAN_SYSTEM_LIBS})
set(CONAN_FRAMEWORKS  ${CONAN_FRAMEWORKS})
set(CONAN_FRAMEWORKS_FOUND "")  # Will be filled later
set(CONAN_DEFINES "-DPCRE2_STATIC"
			"-DXML_STATIC"
			"-DPCRE_STATIC=1"
			"-DFFI_BUILDING"
			"-D_DEFAULT_SOURCE"
			"-D_BSD_SOURCE"
			"-DHAS_FCHOWN"
			"-DHAS_STICKY_DIR_BIT"
			"-DLZMA_API_STATIC"
			"-DLIBJPEG_STATIC"
			"-DFRIBIDI_LIB_STATIC"
			"-DLIBXML_STATIC"
			"-DFLAC__NO_DLL"
			"-DGDK_PIXBUF_STATIC_COMPILATION"
			"-D__ANSI__"
			"-DLIBRAW_NODLL"
			"-DIMGUI_USER_CONFIG=\"imgui_user_config.h\""
			"-D_REENTRANT"
			"-DAL_LIBTYPE_STATIC"
			"-DFREEIMAGE_LIB"
			"-DSPDLOG_FMT_EXTERNAL"
			"-DSPDLOG_COMPILED_LIB"
			"-DASIO_STANDALONE"
			"-DALLEGRO_STATICLINK" ${CONAN_DEFINES})
set(CONAN_BUILD_MODULES_PATHS  ${CONAN_BUILD_MODULES_PATHS})
set(CONAN_CMAKE_MODULE_PATH "/home/me/.conan/data/allegro5/5.2.7/_/_/package/d21d59d0f83bcf9391b4ac65181820ab23686472/"
			"/home/me/.conan/data/glm/0.9.9.8/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/me/.conan/data/asio/1.22.1/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/me/.conan/data/nlohmann_json/3.10.5/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/me/.conan/data/spdlog/1.9.2/_/_/package/ff0052ef32311f77d1f5378b4fcec36de434e6b3/"
			"/home/me/.conan/data/implot/0.13/_/_/package/d7aeea1a4dcb424e6acf76ddc84e5c310ae60ec2/"
			"/home/me/.conan/data/serial/1.2.1/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/"
			"/home/me/.conan/data/freeimage/3.18.0/_/_/package/6877c63756d46da3ec08d6fbb3f47cb817f5584b/"
			"/home/me/.conan/data/minimp3/20200304/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/me/.conan/data/openal/1.21.1/_/_/package/089c95a463e49c2c916b03846f45156880846725/"
			"/home/me/.conan/data/physfs/3.0.2/_/_/package/e70569aa908f21a93abd57c3400143d1e003b8b0/"
			"/home/me/.conan/data/opusfile/0.12/_/_/package/0ba6dc1ba38ca9e5afd7224827302f0480210c79/"
			"/home/me/.conan/data/theora/1.1.1/_/_/package/6e4bc3ab815736fa7c637f569f101e1193ddb5da/"
			"/home/me/.conan/data/gtk/3.24.24/_/_/package/ed67e3969cd44576f96209b87e6ede3fbf4e71f9/"
			"/home/me/.conan/data/glu/system/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/me/.conan/data/pulseaudio/14.2/_/_/package/c63e3687eb4370c7bcc632afbe163773ea0d1d6f/"
			"/home/me/.conan/data/fmt/8.0.1/_/_/package/bb317a1f4f7069078e967719a5c585f83cd078c2/"
			"/home/me/.conan/data/imgui/1.87/_/_/package/b173bbda18164d49a449ffadc1c9e817f49e819d/"
			"/home/me/.conan/data/openjpeg/2.4.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/openexr/2.5.7/_/_/package/1125ca08946d3f74d1579e093edb507405c02a91/"
			"/home/me/.conan/data/libraw/0.20.2/_/_/package/2fa4e3a2c714d892f0f5d0f5ebe7d148372a2891/"
			"/home/me/.conan/data/jxrlib/cci.20170615/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/libalsa/1.2.5.1/_/_/package/51e96d1346424f5ef647616231906873cd225eb3/"
			"/home/me/.conan/data/openssl/1.1.1m/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/gdk-pixbuf/2.42.4/_/_/package/a7f9c55d5c7c441d0573807dbac8fd4b956e5b65/"
			"/home/me/.conan/data/at-spi2-atk/2.38.0/_/_/package/39c8c4af65231dbd723a3c5296e74e58dfae3388/"
			"/home/me/.conan/data/libepoxy/1.5.9/_/_/package/41e9f4d599573e8c930aa096f36cf30cacc41823/"
			"/home/me/.conan/data/pango/1.49.1/_/_/package/5c40613d33c17f067d2023a7c1adcbe072a86946/"
			"/home/me/.conan/data/libsndfile/1.0.31/_/_/package/a510e4d90c1a5085d4dd59083f793052fc083872/"
			"/home/me/.conan/data/libcap/2.62/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/lcms/2.12/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/jasper/2.0.33/_/_/package/6de8eee19e177251528129fa9bdc05bbfce2fea2/"
			"/home/me/.conan/data/libtiff/4.3.0/_/_/package/f82ef25da4e9f661f118d3aa44ad6c1bfef0bc79/"
			"/home/me/.conan/data/flac/1.3.3/_/_/package/f73e61b9ac5c8f3043ccfbe374875bbd9a7376b1/"
			"/home/me/.conan/data/vorbis/1.3.7/_/_/package/6e4bc3ab815736fa7c637f569f101e1193ddb5da/"
			"/home/me/.conan/data/opus/1.3.1/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/cairo/1.17.4/_/_/package/f75004406220e51606a0b4a3d368ec0431589de7/"
			"/home/me/.conan/data/at-spi2-core/2.42.0/_/_/package/280465cd8a5ce4e0fb71526b5dac255f335d870b/"
			"/home/me/.conan/data/atk/2.36.0/_/_/package/e2e2120b6efb3881ae6b1454b8ce084b884b1c65/"
			"/home/me/.conan/data/libxml2/2.9.12/_/_/package/f9bf12b05a917e3b694bc35eb5037c71fbf6b7ca/"
			"/home/me/.conan/data/harfbuzz/3.2.0/_/_/package/7a5bb427e9154bf4923bf7ee0a534d6d536731c7/"
			"/home/me/.conan/data/fribidi/1.0.10/_/_/package/2efda50f82a7d03560e19005db8e932cb0aafd09/"
			"/home/me/.conan/data/libjpeg/9d/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/libwebp/1.2.2/_/_/package/abc00ad0249e9242a1b4cfef4dc265e67c782e32/"
			"/home/me/.conan/data/libdeflate/1.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/xz_utils/5.2.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/jbig/20160605/_/_/package/5dedf41b83996f2663697c4c548617b81e83ca54/"
			"/home/me/.conan/data/zstd/1.5.2/_/_/package/f95595cf9a05caa71e0ee161277907de90f9722f/"
			"/home/me/.conan/data/ogg/1.3.5/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/opengl/system/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/me/.conan/data/xorg/system/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/me/.conan/data/glib/2.69.3/_/_/package/a6a26521f20d70998f225703a44fba30d85ac949/"
			"/home/me/.conan/data/pixman/0.40.0/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/lzo/2.10/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/fontconfig/2.13.93/_/_/package/ebf14a7c2e256d19a84a210a821beaa67f0a0a9c/"
			"/home/me/.conan/data/egl/system/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/me/.conan/data/dbus/1.12.20/_/_/package/49e9760c162d8683bfdf89a5a87b2db540452d40/"
			"/home/me/.conan/data/libiconv/1.16/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/freetype/2.11.1/_/_/package/bca7b8880d98719d556dd526ce612be20a815922/"
			"/home/me/.conan/data/freetype/2.11.1/_/_/package/bca7b8880d98719d556dd526ce612be20a815922/lib/cmake"
			"/home/me/.conan/data/libffi/3.4.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/pcre/8.45/_/_/package/808617580d3a6679a0b80f813490f7baf663198c/"
			"/home/me/.conan/data/libelf/0.8.13/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/libmount/2.36.2/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/libselinux/3.3/_/_/package/f0f1b3d0025db3e0af8917e6c9e9483ec01dd046/"
			"/home/me/.conan/data/expat/2.4.6/_/_/package/859363389e24f9402c19222fd527806e3c413615/"
			"/home/me/.conan/data/libuuid/1.0.3/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/libpng/1.6.37/_/_/package/d5b3dc27faecfb4eb94086722000dd65bb9e6bff/"
			"/home/me/.conan/data/brotli/1.0.9/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/pcre2/10.37/_/_/package/2a1d707302ad380d0a87e831845f2544cf9ab775/"
			"/home/me/.conan/data/zlib/1.2.11/_/_/package/19729b9559f3ae196cad45cb2b97468ccb75dcd1/"
			"/home/me/.conan/data/bzip2/1.0.8/_/_/package/91a8b22c2c5a149bc617cfc06cdd21bf23b12567/"
			"/home/me/.conan/data/bzip2/1.0.8/_/_/package/91a8b22c2c5a149bc617cfc06cdd21bf23b12567/lib/cmake" ${CONAN_CMAKE_MODULE_PATH})

set(CONAN_CXX_FLAGS "-pthread ${CONAN_CXX_FLAGS}")
set(CONAN_SHARED_LINKER_FLAGS "-Wl,--export-dynamic ${CONAN_SHARED_LINKER_FLAGS}")
set(CONAN_EXE_LINKER_FLAGS " ${CONAN_EXE_LINKER_FLAGS}")
set(CONAN_C_FLAGS "-pthread ${CONAN_C_FLAGS}")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND "${CONAN_FRAMEWORKS}" "" "")
# Append to aggregated values variable: Use CONAN_LIBS instead of CONAN_PKG_LIBS to include user appended vars
set(CONAN_LIBS ${CONAN_LIBS} ${CONAN_SYSTEM_LIBS} ${CONAN_FRAMEWORKS_FOUND})


###  Definition of macros and functions ###

macro(conan_define_targets)
    if(${CMAKE_VERSION} VERSION_LESS "3.1.2")
        message(FATAL_ERROR "TARGETS not supported by your CMake version!")
    endif()  # CMAKE > 3.x
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CONAN_CMD_CXX_FLAGS}")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${CONAN_CMD_C_FLAGS}")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} ${CONAN_CMD_SHARED_LINKER_FLAGS}")


    set(_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES "${CONAN_SYSTEM_LIBS_ALLEGRO5} ${CONAN_FRAMEWORKS_FOUND_ALLEGRO5} CONAN_PKG::freeimage CONAN_PKG::freetype CONAN_PKG::flac CONAN_PKG::ogg CONAN_PKG::vorbis CONAN_PKG::minimp3 CONAN_PKG::openal CONAN_PKG::physfs CONAN_PKG::opus CONAN_PKG::opusfile CONAN_PKG::theora CONAN_PKG::opengl CONAN_PKG::xorg CONAN_PKG::gtk CONAN_PKG::expat CONAN_PKG::glu CONAN_PKG::libalsa CONAN_PKG::pulseaudio")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES "${_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ALLEGRO5}" "${CONAN_LIB_DIRS_ALLEGRO5}"
                                  CONAN_PACKAGE_TARGETS_ALLEGRO5 "${_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES}"
                                  "" allegro5)
    set(_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_ALLEGRO5_DEBUG} ${CONAN_FRAMEWORKS_FOUND_ALLEGRO5_DEBUG} CONAN_PKG::freeimage CONAN_PKG::freetype CONAN_PKG::flac CONAN_PKG::ogg CONAN_PKG::vorbis CONAN_PKG::minimp3 CONAN_PKG::openal CONAN_PKG::physfs CONAN_PKG::opus CONAN_PKG::opusfile CONAN_PKG::theora CONAN_PKG::opengl CONAN_PKG::xorg CONAN_PKG::gtk CONAN_PKG::expat CONAN_PKG::glu CONAN_PKG::libalsa CONAN_PKG::pulseaudio")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ALLEGRO5_DEBUG}" "${CONAN_LIB_DIRS_ALLEGRO5_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_ALLEGRO5_DEBUG "${_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_DEBUG}"
                                  "debug" allegro5)
    set(_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_ALLEGRO5_RELEASE} ${CONAN_FRAMEWORKS_FOUND_ALLEGRO5_RELEASE} CONAN_PKG::freeimage CONAN_PKG::freetype CONAN_PKG::flac CONAN_PKG::ogg CONAN_PKG::vorbis CONAN_PKG::minimp3 CONAN_PKG::openal CONAN_PKG::physfs CONAN_PKG::opus CONAN_PKG::opusfile CONAN_PKG::theora CONAN_PKG::opengl CONAN_PKG::xorg CONAN_PKG::gtk CONAN_PKG::expat CONAN_PKG::glu CONAN_PKG::libalsa CONAN_PKG::pulseaudio")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ALLEGRO5_RELEASE}" "${CONAN_LIB_DIRS_ALLEGRO5_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_ALLEGRO5_RELEASE "${_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_RELEASE}"
                                  "release" allegro5)
    set(_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_ALLEGRO5_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_ALLEGRO5_RELWITHDEBINFO} CONAN_PKG::freeimage CONAN_PKG::freetype CONAN_PKG::flac CONAN_PKG::ogg CONAN_PKG::vorbis CONAN_PKG::minimp3 CONAN_PKG::openal CONAN_PKG::physfs CONAN_PKG::opus CONAN_PKG::opusfile CONAN_PKG::theora CONAN_PKG::opengl CONAN_PKG::xorg CONAN_PKG::gtk CONAN_PKG::expat CONAN_PKG::glu CONAN_PKG::libalsa CONAN_PKG::pulseaudio")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ALLEGRO5_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_ALLEGRO5_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_ALLEGRO5_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" allegro5)
    set(_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_ALLEGRO5_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_ALLEGRO5_MINSIZEREL} CONAN_PKG::freeimage CONAN_PKG::freetype CONAN_PKG::flac CONAN_PKG::ogg CONAN_PKG::vorbis CONAN_PKG::minimp3 CONAN_PKG::openal CONAN_PKG::physfs CONAN_PKG::opus CONAN_PKG::opusfile CONAN_PKG::theora CONAN_PKG::opengl CONAN_PKG::xorg CONAN_PKG::gtk CONAN_PKG::expat CONAN_PKG::glu CONAN_PKG::libalsa CONAN_PKG::pulseaudio")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ALLEGRO5_MINSIZEREL}" "${CONAN_LIB_DIRS_ALLEGRO5_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_ALLEGRO5_MINSIZEREL "${_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" allegro5)

    add_library(CONAN_PKG::allegro5 INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::allegro5 PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_ALLEGRO5} ${_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ALLEGRO5_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ALLEGRO5_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ALLEGRO5_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_ALLEGRO5_RELEASE} ${_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ALLEGRO5_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ALLEGRO5_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ALLEGRO5_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_ALLEGRO5_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ALLEGRO5_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ALLEGRO5_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ALLEGRO5_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_ALLEGRO5_MINSIZEREL} ${_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ALLEGRO5_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ALLEGRO5_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ALLEGRO5_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_ALLEGRO5_DEBUG} ${_CONAN_PKG_LIBS_ALLEGRO5_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ALLEGRO5_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ALLEGRO5_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ALLEGRO5_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::allegro5 PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_ALLEGRO5}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_ALLEGRO5_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_ALLEGRO5_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_ALLEGRO5_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_ALLEGRO5_DEBUG}>)
    set_property(TARGET CONAN_PKG::allegro5 PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_ALLEGRO5}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_ALLEGRO5_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_ALLEGRO5_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_ALLEGRO5_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_ALLEGRO5_DEBUG}>)
    set_property(TARGET CONAN_PKG::allegro5 PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_ALLEGRO5_LIST} ${CONAN_CXX_FLAGS_ALLEGRO5_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_ALLEGRO5_RELEASE_LIST} ${CONAN_CXX_FLAGS_ALLEGRO5_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_ALLEGRO5_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_ALLEGRO5_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_ALLEGRO5_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_ALLEGRO5_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_ALLEGRO5_DEBUG_LIST}  ${CONAN_CXX_FLAGS_ALLEGRO5_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_GLM_DEPENDENCIES "${CONAN_SYSTEM_LIBS_GLM} ${CONAN_FRAMEWORKS_FOUND_GLM} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GLM_DEPENDENCIES "${_CONAN_PKG_LIBS_GLM_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GLM}" "${CONAN_LIB_DIRS_GLM}"
                                  CONAN_PACKAGE_TARGETS_GLM "${_CONAN_PKG_LIBS_GLM_DEPENDENCIES}"
                                  "" glm)
    set(_CONAN_PKG_LIBS_GLM_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_GLM_DEBUG} ${CONAN_FRAMEWORKS_FOUND_GLM_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GLM_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_GLM_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GLM_DEBUG}" "${CONAN_LIB_DIRS_GLM_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_GLM_DEBUG "${_CONAN_PKG_LIBS_GLM_DEPENDENCIES_DEBUG}"
                                  "debug" glm)
    set(_CONAN_PKG_LIBS_GLM_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_GLM_RELEASE} ${CONAN_FRAMEWORKS_FOUND_GLM_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GLM_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_GLM_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GLM_RELEASE}" "${CONAN_LIB_DIRS_GLM_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_GLM_RELEASE "${_CONAN_PKG_LIBS_GLM_DEPENDENCIES_RELEASE}"
                                  "release" glm)
    set(_CONAN_PKG_LIBS_GLM_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_GLM_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_GLM_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GLM_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_GLM_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GLM_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_GLM_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_GLM_RELWITHDEBINFO "${_CONAN_PKG_LIBS_GLM_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" glm)
    set(_CONAN_PKG_LIBS_GLM_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_GLM_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_GLM_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GLM_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_GLM_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GLM_MINSIZEREL}" "${CONAN_LIB_DIRS_GLM_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_GLM_MINSIZEREL "${_CONAN_PKG_LIBS_GLM_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" glm)

    add_library(CONAN_PKG::glm INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::glm PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_GLM} ${_CONAN_PKG_LIBS_GLM_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLM_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLM_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GLM_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_GLM_RELEASE} ${_CONAN_PKG_LIBS_GLM_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLM_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLM_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GLM_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_GLM_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_GLM_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLM_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLM_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GLM_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_GLM_MINSIZEREL} ${_CONAN_PKG_LIBS_GLM_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLM_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLM_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GLM_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_GLM_DEBUG} ${_CONAN_PKG_LIBS_GLM_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLM_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLM_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GLM_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::glm PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_GLM}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_GLM_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_GLM_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_GLM_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_GLM_DEBUG}>)
    set_property(TARGET CONAN_PKG::glm PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_GLM}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_GLM_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_GLM_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_GLM_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_GLM_DEBUG}>)
    set_property(TARGET CONAN_PKG::glm PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_GLM_LIST} ${CONAN_CXX_FLAGS_GLM_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_GLM_RELEASE_LIST} ${CONAN_CXX_FLAGS_GLM_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_GLM_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_GLM_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_GLM_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_GLM_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_GLM_DEBUG_LIST}  ${CONAN_CXX_FLAGS_GLM_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_ASIO_DEPENDENCIES "${CONAN_SYSTEM_LIBS_ASIO} ${CONAN_FRAMEWORKS_FOUND_ASIO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ASIO_DEPENDENCIES "${_CONAN_PKG_LIBS_ASIO_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ASIO}" "${CONAN_LIB_DIRS_ASIO}"
                                  CONAN_PACKAGE_TARGETS_ASIO "${_CONAN_PKG_LIBS_ASIO_DEPENDENCIES}"
                                  "" asio)
    set(_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_ASIO_DEBUG} ${CONAN_FRAMEWORKS_FOUND_ASIO_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ASIO_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ASIO_DEBUG}" "${CONAN_LIB_DIRS_ASIO_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_ASIO_DEBUG "${_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_DEBUG}"
                                  "debug" asio)
    set(_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_ASIO_RELEASE} ${CONAN_FRAMEWORKS_FOUND_ASIO_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ASIO_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ASIO_RELEASE}" "${CONAN_LIB_DIRS_ASIO_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_ASIO_RELEASE "${_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_RELEASE}"
                                  "release" asio)
    set(_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_ASIO_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_ASIO_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ASIO_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ASIO_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_ASIO_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_ASIO_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" asio)
    set(_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_ASIO_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_ASIO_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ASIO_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ASIO_MINSIZEREL}" "${CONAN_LIB_DIRS_ASIO_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_ASIO_MINSIZEREL "${_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" asio)

    add_library(CONAN_PKG::asio INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::asio PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_ASIO} ${_CONAN_PKG_LIBS_ASIO_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ASIO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ASIO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ASIO_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_ASIO_RELEASE} ${_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ASIO_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ASIO_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ASIO_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_ASIO_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ASIO_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ASIO_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ASIO_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_ASIO_MINSIZEREL} ${_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ASIO_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ASIO_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ASIO_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_ASIO_DEBUG} ${_CONAN_PKG_LIBS_ASIO_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ASIO_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ASIO_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ASIO_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::asio PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_ASIO}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_ASIO_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_ASIO_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_ASIO_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_ASIO_DEBUG}>)
    set_property(TARGET CONAN_PKG::asio PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_ASIO}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_ASIO_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_ASIO_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_ASIO_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_ASIO_DEBUG}>)
    set_property(TARGET CONAN_PKG::asio PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_ASIO_LIST} ${CONAN_CXX_FLAGS_ASIO_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_ASIO_RELEASE_LIST} ${CONAN_CXX_FLAGS_ASIO_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_ASIO_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_ASIO_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_ASIO_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_ASIO_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_ASIO_DEBUG_LIST}  ${CONAN_CXX_FLAGS_ASIO_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES "${CONAN_SYSTEM_LIBS_NLOHMANN_JSON} ${CONAN_FRAMEWORKS_FOUND_NLOHMANN_JSON} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES "${_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_NLOHMANN_JSON}" "${CONAN_LIB_DIRS_NLOHMANN_JSON}"
                                  CONAN_PACKAGE_TARGETS_NLOHMANN_JSON "${_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES}"
                                  "" nlohmann_json)
    set(_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_NLOHMANN_JSON_DEBUG} ${CONAN_FRAMEWORKS_FOUND_NLOHMANN_JSON_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_NLOHMANN_JSON_DEBUG}" "${CONAN_LIB_DIRS_NLOHMANN_JSON_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_NLOHMANN_JSON_DEBUG "${_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_DEBUG}"
                                  "debug" nlohmann_json)
    set(_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_NLOHMANN_JSON_RELEASE} ${CONAN_FRAMEWORKS_FOUND_NLOHMANN_JSON_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_NLOHMANN_JSON_RELEASE}" "${CONAN_LIB_DIRS_NLOHMANN_JSON_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_NLOHMANN_JSON_RELEASE "${_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_RELEASE}"
                                  "release" nlohmann_json)
    set(_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_NLOHMANN_JSON_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_NLOHMANN_JSON_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_NLOHMANN_JSON_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_NLOHMANN_JSON_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_NLOHMANN_JSON_RELWITHDEBINFO "${_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" nlohmann_json)
    set(_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_NLOHMANN_JSON_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_NLOHMANN_JSON_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_NLOHMANN_JSON_MINSIZEREL}" "${CONAN_LIB_DIRS_NLOHMANN_JSON_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_NLOHMANN_JSON_MINSIZEREL "${_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" nlohmann_json)

    add_library(CONAN_PKG::nlohmann_json INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::nlohmann_json PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_NLOHMANN_JSON} ${_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NLOHMANN_JSON_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NLOHMANN_JSON_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_NLOHMANN_JSON_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_NLOHMANN_JSON_RELEASE} ${_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NLOHMANN_JSON_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NLOHMANN_JSON_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_NLOHMANN_JSON_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_NLOHMANN_JSON_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NLOHMANN_JSON_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NLOHMANN_JSON_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_NLOHMANN_JSON_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_NLOHMANN_JSON_MINSIZEREL} ${_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NLOHMANN_JSON_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NLOHMANN_JSON_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_NLOHMANN_JSON_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_NLOHMANN_JSON_DEBUG} ${_CONAN_PKG_LIBS_NLOHMANN_JSON_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NLOHMANN_JSON_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_NLOHMANN_JSON_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_NLOHMANN_JSON_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::nlohmann_json PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_NLOHMANN_JSON}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_NLOHMANN_JSON_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_NLOHMANN_JSON_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_NLOHMANN_JSON_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_NLOHMANN_JSON_DEBUG}>)
    set_property(TARGET CONAN_PKG::nlohmann_json PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_NLOHMANN_JSON}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_NLOHMANN_JSON_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_NLOHMANN_JSON_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_NLOHMANN_JSON_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_NLOHMANN_JSON_DEBUG}>)
    set_property(TARGET CONAN_PKG::nlohmann_json PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_NLOHMANN_JSON_LIST} ${CONAN_CXX_FLAGS_NLOHMANN_JSON_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_NLOHMANN_JSON_RELEASE_LIST} ${CONAN_CXX_FLAGS_NLOHMANN_JSON_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_NLOHMANN_JSON_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_NLOHMANN_JSON_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_NLOHMANN_JSON_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_NLOHMANN_JSON_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_NLOHMANN_JSON_DEBUG_LIST}  ${CONAN_CXX_FLAGS_NLOHMANN_JSON_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES "${CONAN_SYSTEM_LIBS_SPDLOG} ${CONAN_FRAMEWORKS_FOUND_SPDLOG} CONAN_PKG::fmt")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES "${_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_SPDLOG}" "${CONAN_LIB_DIRS_SPDLOG}"
                                  CONAN_PACKAGE_TARGETS_SPDLOG "${_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES}"
                                  "" spdlog)
    set(_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_SPDLOG_DEBUG} ${CONAN_FRAMEWORKS_FOUND_SPDLOG_DEBUG} CONAN_PKG::fmt")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_SPDLOG_DEBUG}" "${CONAN_LIB_DIRS_SPDLOG_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_SPDLOG_DEBUG "${_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_DEBUG}"
                                  "debug" spdlog)
    set(_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_SPDLOG_RELEASE} ${CONAN_FRAMEWORKS_FOUND_SPDLOG_RELEASE} CONAN_PKG::fmt")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_SPDLOG_RELEASE}" "${CONAN_LIB_DIRS_SPDLOG_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_SPDLOG_RELEASE "${_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_RELEASE}"
                                  "release" spdlog)
    set(_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_SPDLOG_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_SPDLOG_RELWITHDEBINFO} CONAN_PKG::fmt")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_SPDLOG_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_SPDLOG_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_SPDLOG_RELWITHDEBINFO "${_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" spdlog)
    set(_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_SPDLOG_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_SPDLOG_MINSIZEREL} CONAN_PKG::fmt")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_SPDLOG_MINSIZEREL}" "${CONAN_LIB_DIRS_SPDLOG_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_SPDLOG_MINSIZEREL "${_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" spdlog)

    add_library(CONAN_PKG::spdlog INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::spdlog PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_SPDLOG} ${_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPDLOG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPDLOG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_SPDLOG_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_SPDLOG_RELEASE} ${_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPDLOG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPDLOG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_SPDLOG_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_SPDLOG_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPDLOG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPDLOG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_SPDLOG_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_SPDLOG_MINSIZEREL} ${_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPDLOG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPDLOG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_SPDLOG_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_SPDLOG_DEBUG} ${_CONAN_PKG_LIBS_SPDLOG_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPDLOG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SPDLOG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_SPDLOG_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::spdlog PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_SPDLOG}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_SPDLOG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_SPDLOG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_SPDLOG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_SPDLOG_DEBUG}>)
    set_property(TARGET CONAN_PKG::spdlog PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_SPDLOG}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_SPDLOG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_SPDLOG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_SPDLOG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_SPDLOG_DEBUG}>)
    set_property(TARGET CONAN_PKG::spdlog PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_SPDLOG_LIST} ${CONAN_CXX_FLAGS_SPDLOG_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_SPDLOG_RELEASE_LIST} ${CONAN_CXX_FLAGS_SPDLOG_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_SPDLOG_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_SPDLOG_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_SPDLOG_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_SPDLOG_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_SPDLOG_DEBUG_LIST}  ${CONAN_CXX_FLAGS_SPDLOG_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES "${CONAN_SYSTEM_LIBS_IMPLOT} ${CONAN_FRAMEWORKS_FOUND_IMPLOT} CONAN_PKG::imgui")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES "${_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_IMPLOT}" "${CONAN_LIB_DIRS_IMPLOT}"
                                  CONAN_PACKAGE_TARGETS_IMPLOT "${_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES}"
                                  "" implot)
    set(_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_IMPLOT_DEBUG} ${CONAN_FRAMEWORKS_FOUND_IMPLOT_DEBUG} CONAN_PKG::imgui")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_IMPLOT_DEBUG}" "${CONAN_LIB_DIRS_IMPLOT_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_IMPLOT_DEBUG "${_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_DEBUG}"
                                  "debug" implot)
    set(_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_IMPLOT_RELEASE} ${CONAN_FRAMEWORKS_FOUND_IMPLOT_RELEASE} CONAN_PKG::imgui")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_IMPLOT_RELEASE}" "${CONAN_LIB_DIRS_IMPLOT_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_IMPLOT_RELEASE "${_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_RELEASE}"
                                  "release" implot)
    set(_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_IMPLOT_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_IMPLOT_RELWITHDEBINFO} CONAN_PKG::imgui")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_IMPLOT_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_IMPLOT_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_IMPLOT_RELWITHDEBINFO "${_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" implot)
    set(_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_IMPLOT_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_IMPLOT_MINSIZEREL} CONAN_PKG::imgui")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_IMPLOT_MINSIZEREL}" "${CONAN_LIB_DIRS_IMPLOT_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_IMPLOT_MINSIZEREL "${_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" implot)

    add_library(CONAN_PKG::implot INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::implot PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_IMPLOT} ${_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMPLOT_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMPLOT_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_IMPLOT_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_IMPLOT_RELEASE} ${_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMPLOT_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMPLOT_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_IMPLOT_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_IMPLOT_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMPLOT_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMPLOT_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_IMPLOT_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_IMPLOT_MINSIZEREL} ${_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMPLOT_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMPLOT_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_IMPLOT_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_IMPLOT_DEBUG} ${_CONAN_PKG_LIBS_IMPLOT_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMPLOT_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMPLOT_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_IMPLOT_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::implot PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_IMPLOT}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_IMPLOT_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_IMPLOT_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_IMPLOT_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_IMPLOT_DEBUG}>)
    set_property(TARGET CONAN_PKG::implot PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_IMPLOT}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_IMPLOT_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_IMPLOT_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_IMPLOT_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_IMPLOT_DEBUG}>)
    set_property(TARGET CONAN_PKG::implot PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_IMPLOT_LIST} ${CONAN_CXX_FLAGS_IMPLOT_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_IMPLOT_RELEASE_LIST} ${CONAN_CXX_FLAGS_IMPLOT_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_IMPLOT_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_IMPLOT_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_IMPLOT_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_IMPLOT_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_IMPLOT_DEBUG_LIST}  ${CONAN_CXX_FLAGS_IMPLOT_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES "${CONAN_SYSTEM_LIBS_SERIAL} ${CONAN_FRAMEWORKS_FOUND_SERIAL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_SERIAL_DEPENDENCIES "${_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_SERIAL}" "${CONAN_LIB_DIRS_SERIAL}"
                                  CONAN_PACKAGE_TARGETS_SERIAL "${_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES}"
                                  "" serial)
    set(_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_SERIAL_DEBUG} ${CONAN_FRAMEWORKS_FOUND_SERIAL_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_SERIAL_DEBUG}" "${CONAN_LIB_DIRS_SERIAL_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_SERIAL_DEBUG "${_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_DEBUG}"
                                  "debug" serial)
    set(_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_SERIAL_RELEASE} ${CONAN_FRAMEWORKS_FOUND_SERIAL_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_SERIAL_RELEASE}" "${CONAN_LIB_DIRS_SERIAL_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_SERIAL_RELEASE "${_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_RELEASE}"
                                  "release" serial)
    set(_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_SERIAL_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_SERIAL_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_SERIAL_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_SERIAL_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_SERIAL_RELWITHDEBINFO "${_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" serial)
    set(_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_SERIAL_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_SERIAL_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_SERIAL_MINSIZEREL}" "${CONAN_LIB_DIRS_SERIAL_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_SERIAL_MINSIZEREL "${_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" serial)

    add_library(CONAN_PKG::serial INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::serial PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_SERIAL} ${_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SERIAL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SERIAL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_SERIAL_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_SERIAL_RELEASE} ${_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SERIAL_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SERIAL_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_SERIAL_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_SERIAL_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SERIAL_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SERIAL_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_SERIAL_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_SERIAL_MINSIZEREL} ${_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SERIAL_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SERIAL_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_SERIAL_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_SERIAL_DEBUG} ${_CONAN_PKG_LIBS_SERIAL_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SERIAL_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_SERIAL_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_SERIAL_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::serial PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_SERIAL}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_SERIAL_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_SERIAL_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_SERIAL_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_SERIAL_DEBUG}>)
    set_property(TARGET CONAN_PKG::serial PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_SERIAL}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_SERIAL_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_SERIAL_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_SERIAL_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_SERIAL_DEBUG}>)
    set_property(TARGET CONAN_PKG::serial PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_SERIAL_LIST} ${CONAN_CXX_FLAGS_SERIAL_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_SERIAL_RELEASE_LIST} ${CONAN_CXX_FLAGS_SERIAL_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_SERIAL_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_SERIAL_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_SERIAL_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_SERIAL_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_SERIAL_DEBUG_LIST}  ${CONAN_CXX_FLAGS_SERIAL_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES "${CONAN_SYSTEM_LIBS_FREEIMAGE} ${CONAN_FRAMEWORKS_FOUND_FREEIMAGE} CONAN_PKG::zlib CONAN_PKG::libjpeg CONAN_PKG::openjpeg CONAN_PKG::libpng CONAN_PKG::libwebp CONAN_PKG::openexr CONAN_PKG::libraw CONAN_PKG::jxrlib CONAN_PKG::libtiff")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES "${_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FREEIMAGE}" "${CONAN_LIB_DIRS_FREEIMAGE}"
                                  CONAN_PACKAGE_TARGETS_FREEIMAGE "${_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES}"
                                  "" freeimage)
    set(_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_FREEIMAGE_DEBUG} ${CONAN_FRAMEWORKS_FOUND_FREEIMAGE_DEBUG} CONAN_PKG::zlib CONAN_PKG::libjpeg CONAN_PKG::openjpeg CONAN_PKG::libpng CONAN_PKG::libwebp CONAN_PKG::openexr CONAN_PKG::libraw CONAN_PKG::jxrlib CONAN_PKG::libtiff")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FREEIMAGE_DEBUG}" "${CONAN_LIB_DIRS_FREEIMAGE_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_FREEIMAGE_DEBUG "${_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_DEBUG}"
                                  "debug" freeimage)
    set(_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_FREEIMAGE_RELEASE} ${CONAN_FRAMEWORKS_FOUND_FREEIMAGE_RELEASE} CONAN_PKG::zlib CONAN_PKG::libjpeg CONAN_PKG::openjpeg CONAN_PKG::libpng CONAN_PKG::libwebp CONAN_PKG::openexr CONAN_PKG::libraw CONAN_PKG::jxrlib CONAN_PKG::libtiff")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FREEIMAGE_RELEASE}" "${CONAN_LIB_DIRS_FREEIMAGE_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_FREEIMAGE_RELEASE "${_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_RELEASE}"
                                  "release" freeimage)
    set(_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_FREEIMAGE_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_FREEIMAGE_RELWITHDEBINFO} CONAN_PKG::zlib CONAN_PKG::libjpeg CONAN_PKG::openjpeg CONAN_PKG::libpng CONAN_PKG::libwebp CONAN_PKG::openexr CONAN_PKG::libraw CONAN_PKG::jxrlib CONAN_PKG::libtiff")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FREEIMAGE_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_FREEIMAGE_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_FREEIMAGE_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" freeimage)
    set(_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_FREEIMAGE_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_FREEIMAGE_MINSIZEREL} CONAN_PKG::zlib CONAN_PKG::libjpeg CONAN_PKG::openjpeg CONAN_PKG::libpng CONAN_PKG::libwebp CONAN_PKG::openexr CONAN_PKG::libraw CONAN_PKG::jxrlib CONAN_PKG::libtiff")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FREEIMAGE_MINSIZEREL}" "${CONAN_LIB_DIRS_FREEIMAGE_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_FREEIMAGE_MINSIZEREL "${_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" freeimage)

    add_library(CONAN_PKG::freeimage INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::freeimage PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_FREEIMAGE} ${_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREEIMAGE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREEIMAGE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FREEIMAGE_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_FREEIMAGE_RELEASE} ${_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREEIMAGE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREEIMAGE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FREEIMAGE_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_FREEIMAGE_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREEIMAGE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREEIMAGE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FREEIMAGE_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_FREEIMAGE_MINSIZEREL} ${_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREEIMAGE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREEIMAGE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FREEIMAGE_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_FREEIMAGE_DEBUG} ${_CONAN_PKG_LIBS_FREEIMAGE_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREEIMAGE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREEIMAGE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FREEIMAGE_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::freeimage PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_FREEIMAGE}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_FREEIMAGE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_FREEIMAGE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_FREEIMAGE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_FREEIMAGE_DEBUG}>)
    set_property(TARGET CONAN_PKG::freeimage PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_FREEIMAGE}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_FREEIMAGE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_FREEIMAGE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_FREEIMAGE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_FREEIMAGE_DEBUG}>)
    set_property(TARGET CONAN_PKG::freeimage PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_FREEIMAGE_LIST} ${CONAN_CXX_FLAGS_FREEIMAGE_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_FREEIMAGE_RELEASE_LIST} ${CONAN_CXX_FLAGS_FREEIMAGE_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_FREEIMAGE_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_FREEIMAGE_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_FREEIMAGE_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_FREEIMAGE_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_FREEIMAGE_DEBUG_LIST}  ${CONAN_CXX_FLAGS_FREEIMAGE_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES "${CONAN_SYSTEM_LIBS_MINIMP3} ${CONAN_FRAMEWORKS_FOUND_MINIMP3} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES "${_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_MINIMP3}" "${CONAN_LIB_DIRS_MINIMP3}"
                                  CONAN_PACKAGE_TARGETS_MINIMP3 "${_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES}"
                                  "" minimp3)
    set(_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_MINIMP3_DEBUG} ${CONAN_FRAMEWORKS_FOUND_MINIMP3_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_MINIMP3_DEBUG}" "${CONAN_LIB_DIRS_MINIMP3_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_MINIMP3_DEBUG "${_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_DEBUG}"
                                  "debug" minimp3)
    set(_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_MINIMP3_RELEASE} ${CONAN_FRAMEWORKS_FOUND_MINIMP3_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_MINIMP3_RELEASE}" "${CONAN_LIB_DIRS_MINIMP3_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_MINIMP3_RELEASE "${_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_RELEASE}"
                                  "release" minimp3)
    set(_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_MINIMP3_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_MINIMP3_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_MINIMP3_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_MINIMP3_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_MINIMP3_RELWITHDEBINFO "${_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" minimp3)
    set(_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_MINIMP3_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_MINIMP3_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_MINIMP3_MINSIZEREL}" "${CONAN_LIB_DIRS_MINIMP3_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_MINIMP3_MINSIZEREL "${_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" minimp3)

    add_library(CONAN_PKG::minimp3 INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::minimp3 PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_MINIMP3} ${_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_MINIMP3_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_MINIMP3_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_MINIMP3_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_MINIMP3_RELEASE} ${_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_MINIMP3_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_MINIMP3_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_MINIMP3_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_MINIMP3_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_MINIMP3_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_MINIMP3_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_MINIMP3_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_MINIMP3_MINSIZEREL} ${_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_MINIMP3_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_MINIMP3_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_MINIMP3_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_MINIMP3_DEBUG} ${_CONAN_PKG_LIBS_MINIMP3_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_MINIMP3_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_MINIMP3_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_MINIMP3_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::minimp3 PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_MINIMP3}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_MINIMP3_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_MINIMP3_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_MINIMP3_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_MINIMP3_DEBUG}>)
    set_property(TARGET CONAN_PKG::minimp3 PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_MINIMP3}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_MINIMP3_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_MINIMP3_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_MINIMP3_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_MINIMP3_DEBUG}>)
    set_property(TARGET CONAN_PKG::minimp3 PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_MINIMP3_LIST} ${CONAN_CXX_FLAGS_MINIMP3_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_MINIMP3_RELEASE_LIST} ${CONAN_CXX_FLAGS_MINIMP3_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_MINIMP3_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_MINIMP3_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_MINIMP3_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_MINIMP3_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_MINIMP3_DEBUG_LIST}  ${CONAN_CXX_FLAGS_MINIMP3_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES "${CONAN_SYSTEM_LIBS_OPENAL} ${CONAN_FRAMEWORKS_FOUND_OPENAL} CONAN_PKG::libalsa")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENAL_DEPENDENCIES "${_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENAL}" "${CONAN_LIB_DIRS_OPENAL}"
                                  CONAN_PACKAGE_TARGETS_OPENAL "${_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES}"
                                  "" openal)
    set(_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_OPENAL_DEBUG} ${CONAN_FRAMEWORKS_FOUND_OPENAL_DEBUG} CONAN_PKG::libalsa")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENAL_DEBUG}" "${CONAN_LIB_DIRS_OPENAL_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_OPENAL_DEBUG "${_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_DEBUG}"
                                  "debug" openal)
    set(_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_OPENAL_RELEASE} ${CONAN_FRAMEWORKS_FOUND_OPENAL_RELEASE} CONAN_PKG::libalsa")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENAL_RELEASE}" "${CONAN_LIB_DIRS_OPENAL_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_OPENAL_RELEASE "${_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_RELEASE}"
                                  "release" openal)
    set(_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_OPENAL_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_OPENAL_RELWITHDEBINFO} CONAN_PKG::libalsa")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENAL_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_OPENAL_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_OPENAL_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" openal)
    set(_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_OPENAL_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_OPENAL_MINSIZEREL} CONAN_PKG::libalsa")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENAL_MINSIZEREL}" "${CONAN_LIB_DIRS_OPENAL_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_OPENAL_MINSIZEREL "${_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" openal)

    add_library(CONAN_PKG::openal INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::openal PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_OPENAL} ${_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENAL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENAL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENAL_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_OPENAL_RELEASE} ${_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENAL_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENAL_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENAL_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_OPENAL_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENAL_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENAL_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENAL_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_OPENAL_MINSIZEREL} ${_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENAL_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENAL_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENAL_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_OPENAL_DEBUG} ${_CONAN_PKG_LIBS_OPENAL_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENAL_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENAL_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENAL_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::openal PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_OPENAL}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_OPENAL_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_OPENAL_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_OPENAL_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_OPENAL_DEBUG}>)
    set_property(TARGET CONAN_PKG::openal PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_OPENAL}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_OPENAL_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_OPENAL_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_OPENAL_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_OPENAL_DEBUG}>)
    set_property(TARGET CONAN_PKG::openal PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_OPENAL_LIST} ${CONAN_CXX_FLAGS_OPENAL_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_OPENAL_RELEASE_LIST} ${CONAN_CXX_FLAGS_OPENAL_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_OPENAL_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_OPENAL_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_OPENAL_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_OPENAL_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_OPENAL_DEBUG_LIST}  ${CONAN_CXX_FLAGS_OPENAL_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES "${CONAN_SYSTEM_LIBS_PHYSFS} ${CONAN_FRAMEWORKS_FOUND_PHYSFS} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES "${_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PHYSFS}" "${CONAN_LIB_DIRS_PHYSFS}"
                                  CONAN_PACKAGE_TARGETS_PHYSFS "${_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES}"
                                  "" physfs)
    set(_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_PHYSFS_DEBUG} ${CONAN_FRAMEWORKS_FOUND_PHYSFS_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PHYSFS_DEBUG}" "${CONAN_LIB_DIRS_PHYSFS_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_PHYSFS_DEBUG "${_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_DEBUG}"
                                  "debug" physfs)
    set(_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_PHYSFS_RELEASE} ${CONAN_FRAMEWORKS_FOUND_PHYSFS_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PHYSFS_RELEASE}" "${CONAN_LIB_DIRS_PHYSFS_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_PHYSFS_RELEASE "${_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_RELEASE}"
                                  "release" physfs)
    set(_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_PHYSFS_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_PHYSFS_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PHYSFS_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_PHYSFS_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_PHYSFS_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" physfs)
    set(_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_PHYSFS_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_PHYSFS_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PHYSFS_MINSIZEREL}" "${CONAN_LIB_DIRS_PHYSFS_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_PHYSFS_MINSIZEREL "${_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" physfs)

    add_library(CONAN_PKG::physfs INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::physfs PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_PHYSFS} ${_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PHYSFS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PHYSFS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PHYSFS_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_PHYSFS_RELEASE} ${_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PHYSFS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PHYSFS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PHYSFS_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_PHYSFS_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PHYSFS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PHYSFS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PHYSFS_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_PHYSFS_MINSIZEREL} ${_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PHYSFS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PHYSFS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PHYSFS_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_PHYSFS_DEBUG} ${_CONAN_PKG_LIBS_PHYSFS_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PHYSFS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PHYSFS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PHYSFS_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::physfs PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_PHYSFS}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_PHYSFS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_PHYSFS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_PHYSFS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_PHYSFS_DEBUG}>)
    set_property(TARGET CONAN_PKG::physfs PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_PHYSFS}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_PHYSFS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_PHYSFS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_PHYSFS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_PHYSFS_DEBUG}>)
    set_property(TARGET CONAN_PKG::physfs PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_PHYSFS_LIST} ${CONAN_CXX_FLAGS_PHYSFS_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_PHYSFS_RELEASE_LIST} ${CONAN_CXX_FLAGS_PHYSFS_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_PHYSFS_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_PHYSFS_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_PHYSFS_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_PHYSFS_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_PHYSFS_DEBUG_LIST}  ${CONAN_CXX_FLAGS_PHYSFS_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES "${CONAN_SYSTEM_LIBS_OPUSFILE} ${CONAN_FRAMEWORKS_FOUND_OPUSFILE} CONAN_PKG::ogg CONAN_PKG::opus CONAN_PKG::openssl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES "${_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPUSFILE}" "${CONAN_LIB_DIRS_OPUSFILE}"
                                  CONAN_PACKAGE_TARGETS_OPUSFILE "${_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES}"
                                  "" opusfile)
    set(_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_OPUSFILE_DEBUG} ${CONAN_FRAMEWORKS_FOUND_OPUSFILE_DEBUG} CONAN_PKG::ogg CONAN_PKG::opus CONAN_PKG::openssl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPUSFILE_DEBUG}" "${CONAN_LIB_DIRS_OPUSFILE_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_OPUSFILE_DEBUG "${_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_DEBUG}"
                                  "debug" opusfile)
    set(_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_OPUSFILE_RELEASE} ${CONAN_FRAMEWORKS_FOUND_OPUSFILE_RELEASE} CONAN_PKG::ogg CONAN_PKG::opus CONAN_PKG::openssl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPUSFILE_RELEASE}" "${CONAN_LIB_DIRS_OPUSFILE_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_OPUSFILE_RELEASE "${_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_RELEASE}"
                                  "release" opusfile)
    set(_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_OPUSFILE_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_OPUSFILE_RELWITHDEBINFO} CONAN_PKG::ogg CONAN_PKG::opus CONAN_PKG::openssl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPUSFILE_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_OPUSFILE_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_OPUSFILE_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" opusfile)
    set(_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_OPUSFILE_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_OPUSFILE_MINSIZEREL} CONAN_PKG::ogg CONAN_PKG::opus CONAN_PKG::openssl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPUSFILE_MINSIZEREL}" "${CONAN_LIB_DIRS_OPUSFILE_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_OPUSFILE_MINSIZEREL "${_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" opusfile)

    add_library(CONAN_PKG::opusfile INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::opusfile PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_OPUSFILE} ${_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUSFILE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUSFILE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPUSFILE_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_OPUSFILE_RELEASE} ${_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUSFILE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUSFILE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPUSFILE_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_OPUSFILE_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUSFILE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUSFILE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPUSFILE_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_OPUSFILE_MINSIZEREL} ${_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUSFILE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUSFILE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPUSFILE_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_OPUSFILE_DEBUG} ${_CONAN_PKG_LIBS_OPUSFILE_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUSFILE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUSFILE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPUSFILE_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::opusfile PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_OPUSFILE}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_OPUSFILE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_OPUSFILE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_OPUSFILE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_OPUSFILE_DEBUG}>)
    set_property(TARGET CONAN_PKG::opusfile PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_OPUSFILE}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_OPUSFILE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_OPUSFILE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_OPUSFILE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_OPUSFILE_DEBUG}>)
    set_property(TARGET CONAN_PKG::opusfile PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_OPUSFILE_LIST} ${CONAN_CXX_FLAGS_OPUSFILE_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_OPUSFILE_RELEASE_LIST} ${CONAN_CXX_FLAGS_OPUSFILE_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_OPUSFILE_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_OPUSFILE_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_OPUSFILE_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_OPUSFILE_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_OPUSFILE_DEBUG_LIST}  ${CONAN_CXX_FLAGS_OPUSFILE_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_THEORA_DEPENDENCIES "${CONAN_SYSTEM_LIBS_THEORA} ${CONAN_FRAMEWORKS_FOUND_THEORA} CONAN_PKG::ogg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_THEORA_DEPENDENCIES "${_CONAN_PKG_LIBS_THEORA_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_THEORA}" "${CONAN_LIB_DIRS_THEORA}"
                                  CONAN_PACKAGE_TARGETS_THEORA "${_CONAN_PKG_LIBS_THEORA_DEPENDENCIES}"
                                  "" theora)
    set(_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_THEORA_DEBUG} ${CONAN_FRAMEWORKS_FOUND_THEORA_DEBUG} CONAN_PKG::ogg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_THEORA_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_THEORA_DEBUG}" "${CONAN_LIB_DIRS_THEORA_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_THEORA_DEBUG "${_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_DEBUG}"
                                  "debug" theora)
    set(_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_THEORA_RELEASE} ${CONAN_FRAMEWORKS_FOUND_THEORA_RELEASE} CONAN_PKG::ogg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_THEORA_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_THEORA_RELEASE}" "${CONAN_LIB_DIRS_THEORA_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_THEORA_RELEASE "${_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_RELEASE}"
                                  "release" theora)
    set(_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_THEORA_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_THEORA_RELWITHDEBINFO} CONAN_PKG::ogg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_THEORA_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_THEORA_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_THEORA_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_THEORA_RELWITHDEBINFO "${_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" theora)
    set(_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_THEORA_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_THEORA_MINSIZEREL} CONAN_PKG::ogg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_THEORA_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_THEORA_MINSIZEREL}" "${CONAN_LIB_DIRS_THEORA_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_THEORA_MINSIZEREL "${_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" theora)

    add_library(CONAN_PKG::theora INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::theora PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_THEORA} ${_CONAN_PKG_LIBS_THEORA_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_THEORA_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_THEORA_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_THEORA_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_THEORA_RELEASE} ${_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_THEORA_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_THEORA_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_THEORA_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_THEORA_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_THEORA_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_THEORA_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_THEORA_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_THEORA_MINSIZEREL} ${_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_THEORA_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_THEORA_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_THEORA_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_THEORA_DEBUG} ${_CONAN_PKG_LIBS_THEORA_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_THEORA_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_THEORA_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_THEORA_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::theora PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_THEORA}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_THEORA_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_THEORA_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_THEORA_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_THEORA_DEBUG}>)
    set_property(TARGET CONAN_PKG::theora PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_THEORA}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_THEORA_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_THEORA_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_THEORA_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_THEORA_DEBUG}>)
    set_property(TARGET CONAN_PKG::theora PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_THEORA_LIST} ${CONAN_CXX_FLAGS_THEORA_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_THEORA_RELEASE_LIST} ${CONAN_CXX_FLAGS_THEORA_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_THEORA_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_THEORA_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_THEORA_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_THEORA_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_THEORA_DEBUG_LIST}  ${CONAN_CXX_FLAGS_THEORA_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_GTK_DEPENDENCIES "${CONAN_SYSTEM_LIBS_GTK} ${CONAN_FRAMEWORKS_FOUND_GTK} CONAN_PKG::gdk-pixbuf CONAN_PKG::glib CONAN_PKG::cairo CONAN_PKG::at-spi2-atk CONAN_PKG::xorg CONAN_PKG::atk CONAN_PKG::libepoxy CONAN_PKG::pango")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GTK_DEPENDENCIES "${_CONAN_PKG_LIBS_GTK_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GTK}" "${CONAN_LIB_DIRS_GTK}"
                                  CONAN_PACKAGE_TARGETS_GTK "${_CONAN_PKG_LIBS_GTK_DEPENDENCIES}"
                                  "" gtk)
    set(_CONAN_PKG_LIBS_GTK_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_GTK_DEBUG} ${CONAN_FRAMEWORKS_FOUND_GTK_DEBUG} CONAN_PKG::gdk-pixbuf CONAN_PKG::glib CONAN_PKG::cairo CONAN_PKG::at-spi2-atk CONAN_PKG::xorg CONAN_PKG::atk CONAN_PKG::libepoxy CONAN_PKG::pango")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GTK_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_GTK_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GTK_DEBUG}" "${CONAN_LIB_DIRS_GTK_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_GTK_DEBUG "${_CONAN_PKG_LIBS_GTK_DEPENDENCIES_DEBUG}"
                                  "debug" gtk)
    set(_CONAN_PKG_LIBS_GTK_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_GTK_RELEASE} ${CONAN_FRAMEWORKS_FOUND_GTK_RELEASE} CONAN_PKG::gdk-pixbuf CONAN_PKG::glib CONAN_PKG::cairo CONAN_PKG::at-spi2-atk CONAN_PKG::xorg CONAN_PKG::atk CONAN_PKG::libepoxy CONAN_PKG::pango")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GTK_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_GTK_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GTK_RELEASE}" "${CONAN_LIB_DIRS_GTK_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_GTK_RELEASE "${_CONAN_PKG_LIBS_GTK_DEPENDENCIES_RELEASE}"
                                  "release" gtk)
    set(_CONAN_PKG_LIBS_GTK_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_GTK_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_GTK_RELWITHDEBINFO} CONAN_PKG::gdk-pixbuf CONAN_PKG::glib CONAN_PKG::cairo CONAN_PKG::at-spi2-atk CONAN_PKG::xorg CONAN_PKG::atk CONAN_PKG::libepoxy CONAN_PKG::pango")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GTK_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_GTK_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GTK_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_GTK_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_GTK_RELWITHDEBINFO "${_CONAN_PKG_LIBS_GTK_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" gtk)
    set(_CONAN_PKG_LIBS_GTK_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_GTK_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_GTK_MINSIZEREL} CONAN_PKG::gdk-pixbuf CONAN_PKG::glib CONAN_PKG::cairo CONAN_PKG::at-spi2-atk CONAN_PKG::xorg CONAN_PKG::atk CONAN_PKG::libepoxy CONAN_PKG::pango")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GTK_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_GTK_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GTK_MINSIZEREL}" "${CONAN_LIB_DIRS_GTK_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_GTK_MINSIZEREL "${_CONAN_PKG_LIBS_GTK_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" gtk)

    add_library(CONAN_PKG::gtk INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::gtk PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_GTK} ${_CONAN_PKG_LIBS_GTK_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GTK_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GTK_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GTK_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_GTK_RELEASE} ${_CONAN_PKG_LIBS_GTK_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GTK_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GTK_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GTK_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_GTK_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_GTK_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GTK_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GTK_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GTK_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_GTK_MINSIZEREL} ${_CONAN_PKG_LIBS_GTK_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GTK_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GTK_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GTK_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_GTK_DEBUG} ${_CONAN_PKG_LIBS_GTK_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GTK_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GTK_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GTK_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::gtk PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_GTK}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_GTK_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_GTK_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_GTK_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_GTK_DEBUG}>)
    set_property(TARGET CONAN_PKG::gtk PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_GTK}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_GTK_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_GTK_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_GTK_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_GTK_DEBUG}>)
    set_property(TARGET CONAN_PKG::gtk PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_GTK_LIST} ${CONAN_CXX_FLAGS_GTK_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_GTK_RELEASE_LIST} ${CONAN_CXX_FLAGS_GTK_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_GTK_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_GTK_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_GTK_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_GTK_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_GTK_DEBUG_LIST}  ${CONAN_CXX_FLAGS_GTK_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_GLU_DEPENDENCIES "${CONAN_SYSTEM_LIBS_GLU} ${CONAN_FRAMEWORKS_FOUND_GLU} CONAN_PKG::opengl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GLU_DEPENDENCIES "${_CONAN_PKG_LIBS_GLU_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GLU}" "${CONAN_LIB_DIRS_GLU}"
                                  CONAN_PACKAGE_TARGETS_GLU "${_CONAN_PKG_LIBS_GLU_DEPENDENCIES}"
                                  "" glu)
    set(_CONAN_PKG_LIBS_GLU_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_GLU_DEBUG} ${CONAN_FRAMEWORKS_FOUND_GLU_DEBUG} CONAN_PKG::opengl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GLU_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_GLU_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GLU_DEBUG}" "${CONAN_LIB_DIRS_GLU_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_GLU_DEBUG "${_CONAN_PKG_LIBS_GLU_DEPENDENCIES_DEBUG}"
                                  "debug" glu)
    set(_CONAN_PKG_LIBS_GLU_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_GLU_RELEASE} ${CONAN_FRAMEWORKS_FOUND_GLU_RELEASE} CONAN_PKG::opengl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GLU_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_GLU_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GLU_RELEASE}" "${CONAN_LIB_DIRS_GLU_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_GLU_RELEASE "${_CONAN_PKG_LIBS_GLU_DEPENDENCIES_RELEASE}"
                                  "release" glu)
    set(_CONAN_PKG_LIBS_GLU_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_GLU_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_GLU_RELWITHDEBINFO} CONAN_PKG::opengl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GLU_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_GLU_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GLU_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_GLU_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_GLU_RELWITHDEBINFO "${_CONAN_PKG_LIBS_GLU_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" glu)
    set(_CONAN_PKG_LIBS_GLU_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_GLU_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_GLU_MINSIZEREL} CONAN_PKG::opengl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GLU_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_GLU_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GLU_MINSIZEREL}" "${CONAN_LIB_DIRS_GLU_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_GLU_MINSIZEREL "${_CONAN_PKG_LIBS_GLU_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" glu)

    add_library(CONAN_PKG::glu INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::glu PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_GLU} ${_CONAN_PKG_LIBS_GLU_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLU_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLU_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GLU_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_GLU_RELEASE} ${_CONAN_PKG_LIBS_GLU_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLU_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLU_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GLU_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_GLU_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_GLU_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLU_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLU_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GLU_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_GLU_MINSIZEREL} ${_CONAN_PKG_LIBS_GLU_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLU_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLU_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GLU_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_GLU_DEBUG} ${_CONAN_PKG_LIBS_GLU_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLU_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLU_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GLU_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::glu PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_GLU}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_GLU_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_GLU_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_GLU_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_GLU_DEBUG}>)
    set_property(TARGET CONAN_PKG::glu PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_GLU}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_GLU_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_GLU_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_GLU_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_GLU_DEBUG}>)
    set_property(TARGET CONAN_PKG::glu PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_GLU_LIST} ${CONAN_CXX_FLAGS_GLU_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_GLU_RELEASE_LIST} ${CONAN_CXX_FLAGS_GLU_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_GLU_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_GLU_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_GLU_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_GLU_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_GLU_DEBUG_LIST}  ${CONAN_CXX_FLAGS_GLU_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES "${CONAN_SYSTEM_LIBS_PULSEAUDIO} ${CONAN_FRAMEWORKS_FOUND_PULSEAUDIO} CONAN_PKG::libiconv CONAN_PKG::libsndfile CONAN_PKG::libcap CONAN_PKG::libalsa CONAN_PKG::xorg CONAN_PKG::openssl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES "${_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PULSEAUDIO}" "${CONAN_LIB_DIRS_PULSEAUDIO}"
                                  CONAN_PACKAGE_TARGETS_PULSEAUDIO "${_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES}"
                                  "" pulseaudio)
    set(_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_PULSEAUDIO_DEBUG} ${CONAN_FRAMEWORKS_FOUND_PULSEAUDIO_DEBUG} CONAN_PKG::libiconv CONAN_PKG::libsndfile CONAN_PKG::libcap CONAN_PKG::libalsa CONAN_PKG::xorg CONAN_PKG::openssl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PULSEAUDIO_DEBUG}" "${CONAN_LIB_DIRS_PULSEAUDIO_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_PULSEAUDIO_DEBUG "${_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_DEBUG}"
                                  "debug" pulseaudio)
    set(_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_PULSEAUDIO_RELEASE} ${CONAN_FRAMEWORKS_FOUND_PULSEAUDIO_RELEASE} CONAN_PKG::libiconv CONAN_PKG::libsndfile CONAN_PKG::libcap CONAN_PKG::libalsa CONAN_PKG::xorg CONAN_PKG::openssl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PULSEAUDIO_RELEASE}" "${CONAN_LIB_DIRS_PULSEAUDIO_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_PULSEAUDIO_RELEASE "${_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_RELEASE}"
                                  "release" pulseaudio)
    set(_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_PULSEAUDIO_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_PULSEAUDIO_RELWITHDEBINFO} CONAN_PKG::libiconv CONAN_PKG::libsndfile CONAN_PKG::libcap CONAN_PKG::libalsa CONAN_PKG::xorg CONAN_PKG::openssl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PULSEAUDIO_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_PULSEAUDIO_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_PULSEAUDIO_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" pulseaudio)
    set(_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_PULSEAUDIO_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_PULSEAUDIO_MINSIZEREL} CONAN_PKG::libiconv CONAN_PKG::libsndfile CONAN_PKG::libcap CONAN_PKG::libalsa CONAN_PKG::xorg CONAN_PKG::openssl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PULSEAUDIO_MINSIZEREL}" "${CONAN_LIB_DIRS_PULSEAUDIO_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_PULSEAUDIO_MINSIZEREL "${_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" pulseaudio)

    add_library(CONAN_PKG::pulseaudio INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::pulseaudio PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_PULSEAUDIO} ${_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PULSEAUDIO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PULSEAUDIO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PULSEAUDIO_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_PULSEAUDIO_RELEASE} ${_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PULSEAUDIO_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PULSEAUDIO_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PULSEAUDIO_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_PULSEAUDIO_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PULSEAUDIO_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PULSEAUDIO_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PULSEAUDIO_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_PULSEAUDIO_MINSIZEREL} ${_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PULSEAUDIO_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PULSEAUDIO_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PULSEAUDIO_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_PULSEAUDIO_DEBUG} ${_CONAN_PKG_LIBS_PULSEAUDIO_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PULSEAUDIO_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PULSEAUDIO_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PULSEAUDIO_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::pulseaudio PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_PULSEAUDIO}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_PULSEAUDIO_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_PULSEAUDIO_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_PULSEAUDIO_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_PULSEAUDIO_DEBUG}>)
    set_property(TARGET CONAN_PKG::pulseaudio PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_PULSEAUDIO}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_PULSEAUDIO_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_PULSEAUDIO_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_PULSEAUDIO_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_PULSEAUDIO_DEBUG}>)
    set_property(TARGET CONAN_PKG::pulseaudio PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_PULSEAUDIO_LIST} ${CONAN_CXX_FLAGS_PULSEAUDIO_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_PULSEAUDIO_RELEASE_LIST} ${CONAN_CXX_FLAGS_PULSEAUDIO_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_PULSEAUDIO_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_PULSEAUDIO_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_PULSEAUDIO_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_PULSEAUDIO_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_PULSEAUDIO_DEBUG_LIST}  ${CONAN_CXX_FLAGS_PULSEAUDIO_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_FMT_DEPENDENCIES "${CONAN_SYSTEM_LIBS_FMT} ${CONAN_FRAMEWORKS_FOUND_FMT} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FMT_DEPENDENCIES "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FMT}" "${CONAN_LIB_DIRS_FMT}"
                                  CONAN_PACKAGE_TARGETS_FMT "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES}"
                                  "" fmt)
    set(_CONAN_PKG_LIBS_FMT_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_FMT_DEBUG} ${CONAN_FRAMEWORKS_FOUND_FMT_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FMT_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FMT_DEBUG}" "${CONAN_LIB_DIRS_FMT_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_FMT_DEBUG "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_DEBUG}"
                                  "debug" fmt)
    set(_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_FMT_RELEASE} ${CONAN_FRAMEWORKS_FOUND_FMT_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FMT_RELEASE}" "${CONAN_LIB_DIRS_FMT_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_FMT_RELEASE "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELEASE}"
                                  "release" fmt)
    set(_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_FMT_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_FMT_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FMT_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_FMT_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_FMT_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" fmt)
    set(_CONAN_PKG_LIBS_FMT_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_FMT_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_FMT_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FMT_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FMT_MINSIZEREL}" "${CONAN_LIB_DIRS_FMT_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_FMT_MINSIZEREL "${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" fmt)

    add_library(CONAN_PKG::fmt INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::fmt PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_FMT} ${_CONAN_PKG_LIBS_FMT_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FMT_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_FMT_RELEASE} ${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FMT_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_FMT_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FMT_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_FMT_MINSIZEREL} ${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FMT_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_FMT_DEBUG} ${_CONAN_PKG_LIBS_FMT_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FMT_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FMT_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::fmt PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_FMT}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_FMT_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_FMT_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_FMT_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_FMT_DEBUG}>)
    set_property(TARGET CONAN_PKG::fmt PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_FMT}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_FMT_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_FMT_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_FMT_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_FMT_DEBUG}>)
    set_property(TARGET CONAN_PKG::fmt PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_FMT_LIST} ${CONAN_CXX_FLAGS_FMT_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_FMT_RELEASE_LIST} ${CONAN_CXX_FLAGS_FMT_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_FMT_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_FMT_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_FMT_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_FMT_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_FMT_DEBUG_LIST}  ${CONAN_CXX_FLAGS_FMT_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES "${CONAN_SYSTEM_LIBS_IMGUI} ${CONAN_FRAMEWORKS_FOUND_IMGUI} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_IMGUI_DEPENDENCIES "${_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_IMGUI}" "${CONAN_LIB_DIRS_IMGUI}"
                                  CONAN_PACKAGE_TARGETS_IMGUI "${_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES}"
                                  "" imgui)
    set(_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_IMGUI_DEBUG} ${CONAN_FRAMEWORKS_FOUND_IMGUI_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_IMGUI_DEBUG}" "${CONAN_LIB_DIRS_IMGUI_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_IMGUI_DEBUG "${_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_DEBUG}"
                                  "debug" imgui)
    set(_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_IMGUI_RELEASE} ${CONAN_FRAMEWORKS_FOUND_IMGUI_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_IMGUI_RELEASE}" "${CONAN_LIB_DIRS_IMGUI_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_IMGUI_RELEASE "${_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_RELEASE}"
                                  "release" imgui)
    set(_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_IMGUI_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_IMGUI_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_IMGUI_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_IMGUI_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_IMGUI_RELWITHDEBINFO "${_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" imgui)
    set(_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_IMGUI_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_IMGUI_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_IMGUI_MINSIZEREL}" "${CONAN_LIB_DIRS_IMGUI_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_IMGUI_MINSIZEREL "${_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" imgui)

    add_library(CONAN_PKG::imgui INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::imgui PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_IMGUI} ${_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMGUI_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMGUI_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_IMGUI_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_IMGUI_RELEASE} ${_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMGUI_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMGUI_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_IMGUI_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_IMGUI_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMGUI_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMGUI_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_IMGUI_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_IMGUI_MINSIZEREL} ${_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMGUI_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMGUI_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_IMGUI_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_IMGUI_DEBUG} ${_CONAN_PKG_LIBS_IMGUI_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMGUI_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_IMGUI_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_IMGUI_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::imgui PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_IMGUI}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_IMGUI_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_IMGUI_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_IMGUI_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_IMGUI_DEBUG}>)
    set_property(TARGET CONAN_PKG::imgui PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_IMGUI}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_IMGUI_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_IMGUI_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_IMGUI_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_IMGUI_DEBUG}>)
    set_property(TARGET CONAN_PKG::imgui PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_IMGUI_LIST} ${CONAN_CXX_FLAGS_IMGUI_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_IMGUI_RELEASE_LIST} ${CONAN_CXX_FLAGS_IMGUI_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_IMGUI_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_IMGUI_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_IMGUI_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_IMGUI_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_IMGUI_DEBUG_LIST}  ${CONAN_CXX_FLAGS_IMGUI_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES "${CONAN_SYSTEM_LIBS_OPENJPEG} ${CONAN_FRAMEWORKS_FOUND_OPENJPEG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES "${_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENJPEG}" "${CONAN_LIB_DIRS_OPENJPEG}"
                                  CONAN_PACKAGE_TARGETS_OPENJPEG "${_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES}"
                                  "" openjpeg)
    set(_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_OPENJPEG_DEBUG} ${CONAN_FRAMEWORKS_FOUND_OPENJPEG_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENJPEG_DEBUG}" "${CONAN_LIB_DIRS_OPENJPEG_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_OPENJPEG_DEBUG "${_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_DEBUG}"
                                  "debug" openjpeg)
    set(_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_OPENJPEG_RELEASE} ${CONAN_FRAMEWORKS_FOUND_OPENJPEG_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENJPEG_RELEASE}" "${CONAN_LIB_DIRS_OPENJPEG_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_OPENJPEG_RELEASE "${_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_RELEASE}"
                                  "release" openjpeg)
    set(_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_OPENJPEG_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_OPENJPEG_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENJPEG_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_OPENJPEG_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_OPENJPEG_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" openjpeg)
    set(_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_OPENJPEG_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_OPENJPEG_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENJPEG_MINSIZEREL}" "${CONAN_LIB_DIRS_OPENJPEG_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_OPENJPEG_MINSIZEREL "${_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" openjpeg)

    add_library(CONAN_PKG::openjpeg INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::openjpeg PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_OPENJPEG} ${_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENJPEG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENJPEG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENJPEG_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_OPENJPEG_RELEASE} ${_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENJPEG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENJPEG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENJPEG_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_OPENJPEG_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENJPEG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENJPEG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENJPEG_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_OPENJPEG_MINSIZEREL} ${_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENJPEG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENJPEG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENJPEG_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_OPENJPEG_DEBUG} ${_CONAN_PKG_LIBS_OPENJPEG_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENJPEG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENJPEG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENJPEG_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::openjpeg PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_OPENJPEG}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_OPENJPEG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_OPENJPEG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_OPENJPEG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_OPENJPEG_DEBUG}>)
    set_property(TARGET CONAN_PKG::openjpeg PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_OPENJPEG}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_OPENJPEG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_OPENJPEG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_OPENJPEG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_OPENJPEG_DEBUG}>)
    set_property(TARGET CONAN_PKG::openjpeg PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_OPENJPEG_LIST} ${CONAN_CXX_FLAGS_OPENJPEG_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_OPENJPEG_RELEASE_LIST} ${CONAN_CXX_FLAGS_OPENJPEG_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_OPENJPEG_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_OPENJPEG_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_OPENJPEG_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_OPENJPEG_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_OPENJPEG_DEBUG_LIST}  ${CONAN_CXX_FLAGS_OPENJPEG_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES "${CONAN_SYSTEM_LIBS_OPENEXR} ${CONAN_FRAMEWORKS_FOUND_OPENEXR} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENEXR}" "${CONAN_LIB_DIRS_OPENEXR}"
                                  CONAN_PACKAGE_TARGETS_OPENEXR "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES}"
                                  "" openexr)
    set(_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_OPENEXR_DEBUG} ${CONAN_FRAMEWORKS_FOUND_OPENEXR_DEBUG} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENEXR_DEBUG}" "${CONAN_LIB_DIRS_OPENEXR_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_OPENEXR_DEBUG "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_DEBUG}"
                                  "debug" openexr)
    set(_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_OPENEXR_RELEASE} ${CONAN_FRAMEWORKS_FOUND_OPENEXR_RELEASE} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENEXR_RELEASE}" "${CONAN_LIB_DIRS_OPENEXR_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_OPENEXR_RELEASE "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELEASE}"
                                  "release" openexr)
    set(_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_OPENEXR_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_OPENEXR_RELWITHDEBINFO} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENEXR_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_OPENEXR_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_OPENEXR_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" openexr)
    set(_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_OPENEXR_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_OPENEXR_MINSIZEREL} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENEXR_MINSIZEREL}" "${CONAN_LIB_DIRS_OPENEXR_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_OPENEXR_MINSIZEREL "${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" openexr)

    add_library(CONAN_PKG::openexr INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::openexr PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_OPENEXR} ${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENEXR_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENEXR_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENEXR_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_OPENEXR_RELEASE} ${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENEXR_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENEXR_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENEXR_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_OPENEXR_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENEXR_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENEXR_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENEXR_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_OPENEXR_MINSIZEREL} ${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENEXR_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENEXR_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENEXR_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_OPENEXR_DEBUG} ${_CONAN_PKG_LIBS_OPENEXR_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENEXR_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENEXR_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENEXR_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::openexr PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_OPENEXR}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_OPENEXR_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_OPENEXR_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_OPENEXR_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_OPENEXR_DEBUG}>)
    set_property(TARGET CONAN_PKG::openexr PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_OPENEXR}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_OPENEXR_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_OPENEXR_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_OPENEXR_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_OPENEXR_DEBUG}>)
    set_property(TARGET CONAN_PKG::openexr PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_OPENEXR_LIST} ${CONAN_CXX_FLAGS_OPENEXR_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_OPENEXR_RELEASE_LIST} ${CONAN_CXX_FLAGS_OPENEXR_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_OPENEXR_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_OPENEXR_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_OPENEXR_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_OPENEXR_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_OPENEXR_DEBUG_LIST}  ${CONAN_CXX_FLAGS_OPENEXR_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBRAW} ${CONAN_FRAMEWORKS_FOUND_LIBRAW} CONAN_PKG::libjpeg CONAN_PKG::lcms CONAN_PKG::jasper")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBRAW}" "${CONAN_LIB_DIRS_LIBRAW}"
                                  CONAN_PACKAGE_TARGETS_LIBRAW "${_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES}"
                                  "" libraw)
    set(_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBRAW_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBRAW_DEBUG} CONAN_PKG::libjpeg CONAN_PKG::lcms CONAN_PKG::jasper")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBRAW_DEBUG}" "${CONAN_LIB_DIRS_LIBRAW_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBRAW_DEBUG "${_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_DEBUG}"
                                  "debug" libraw)
    set(_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBRAW_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBRAW_RELEASE} CONAN_PKG::libjpeg CONAN_PKG::lcms CONAN_PKG::jasper")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBRAW_RELEASE}" "${CONAN_LIB_DIRS_LIBRAW_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBRAW_RELEASE "${_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_RELEASE}"
                                  "release" libraw)
    set(_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBRAW_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBRAW_RELWITHDEBINFO} CONAN_PKG::libjpeg CONAN_PKG::lcms CONAN_PKG::jasper")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBRAW_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBRAW_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBRAW_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libraw)
    set(_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBRAW_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBRAW_MINSIZEREL} CONAN_PKG::libjpeg CONAN_PKG::lcms CONAN_PKG::jasper")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBRAW_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBRAW_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBRAW_MINSIZEREL "${_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libraw)

    add_library(CONAN_PKG::libraw INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libraw PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBRAW} ${_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBRAW_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBRAW_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBRAW_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBRAW_RELEASE} ${_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBRAW_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBRAW_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBRAW_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBRAW_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBRAW_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBRAW_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBRAW_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBRAW_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBRAW_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBRAW_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBRAW_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBRAW_DEBUG} ${_CONAN_PKG_LIBS_LIBRAW_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBRAW_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBRAW_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBRAW_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libraw PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBRAW}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBRAW_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBRAW_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBRAW_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBRAW_DEBUG}>)
    set_property(TARGET CONAN_PKG::libraw PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBRAW}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBRAW_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBRAW_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBRAW_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBRAW_DEBUG}>)
    set_property(TARGET CONAN_PKG::libraw PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBRAW_LIST} ${CONAN_CXX_FLAGS_LIBRAW_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBRAW_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBRAW_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBRAW_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBRAW_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBRAW_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBRAW_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBRAW_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBRAW_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES "${CONAN_SYSTEM_LIBS_JXRLIB} ${CONAN_FRAMEWORKS_FOUND_JXRLIB} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES "${_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JXRLIB}" "${CONAN_LIB_DIRS_JXRLIB}"
                                  CONAN_PACKAGE_TARGETS_JXRLIB "${_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES}"
                                  "" jxrlib)
    set(_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_JXRLIB_DEBUG} ${CONAN_FRAMEWORKS_FOUND_JXRLIB_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JXRLIB_DEBUG}" "${CONAN_LIB_DIRS_JXRLIB_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_JXRLIB_DEBUG "${_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_DEBUG}"
                                  "debug" jxrlib)
    set(_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_JXRLIB_RELEASE} ${CONAN_FRAMEWORKS_FOUND_JXRLIB_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JXRLIB_RELEASE}" "${CONAN_LIB_DIRS_JXRLIB_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_JXRLIB_RELEASE "${_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_RELEASE}"
                                  "release" jxrlib)
    set(_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_JXRLIB_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_JXRLIB_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JXRLIB_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_JXRLIB_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_JXRLIB_RELWITHDEBINFO "${_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" jxrlib)
    set(_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_JXRLIB_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_JXRLIB_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JXRLIB_MINSIZEREL}" "${CONAN_LIB_DIRS_JXRLIB_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_JXRLIB_MINSIZEREL "${_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" jxrlib)

    add_library(CONAN_PKG::jxrlib INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::jxrlib PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_JXRLIB} ${_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JXRLIB_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JXRLIB_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_JXRLIB_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_JXRLIB_RELEASE} ${_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JXRLIB_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JXRLIB_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_JXRLIB_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_JXRLIB_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JXRLIB_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JXRLIB_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_JXRLIB_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_JXRLIB_MINSIZEREL} ${_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JXRLIB_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JXRLIB_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_JXRLIB_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_JXRLIB_DEBUG} ${_CONAN_PKG_LIBS_JXRLIB_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JXRLIB_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JXRLIB_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_JXRLIB_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::jxrlib PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_JXRLIB}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_JXRLIB_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_JXRLIB_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_JXRLIB_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_JXRLIB_DEBUG}>)
    set_property(TARGET CONAN_PKG::jxrlib PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_JXRLIB}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_JXRLIB_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_JXRLIB_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_JXRLIB_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_JXRLIB_DEBUG}>)
    set_property(TARGET CONAN_PKG::jxrlib PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_JXRLIB_LIST} ${CONAN_CXX_FLAGS_JXRLIB_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_JXRLIB_RELEASE_LIST} ${CONAN_CXX_FLAGS_JXRLIB_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_JXRLIB_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_JXRLIB_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_JXRLIB_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_JXRLIB_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_JXRLIB_DEBUG_LIST}  ${CONAN_CXX_FLAGS_JXRLIB_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBALSA} ${CONAN_FRAMEWORKS_FOUND_LIBALSA} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBALSA}" "${CONAN_LIB_DIRS_LIBALSA}"
                                  CONAN_PACKAGE_TARGETS_LIBALSA "${_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES}"
                                  "" libalsa)
    set(_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBALSA_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBALSA_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBALSA_DEBUG}" "${CONAN_LIB_DIRS_LIBALSA_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBALSA_DEBUG "${_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_DEBUG}"
                                  "debug" libalsa)
    set(_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBALSA_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBALSA_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBALSA_RELEASE}" "${CONAN_LIB_DIRS_LIBALSA_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBALSA_RELEASE "${_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_RELEASE}"
                                  "release" libalsa)
    set(_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBALSA_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBALSA_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBALSA_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBALSA_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBALSA_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libalsa)
    set(_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBALSA_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBALSA_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBALSA_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBALSA_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBALSA_MINSIZEREL "${_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libalsa)

    add_library(CONAN_PKG::libalsa INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libalsa PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBALSA} ${_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBALSA_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBALSA_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBALSA_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBALSA_RELEASE} ${_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBALSA_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBALSA_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBALSA_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBALSA_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBALSA_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBALSA_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBALSA_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBALSA_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBALSA_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBALSA_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBALSA_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBALSA_DEBUG} ${_CONAN_PKG_LIBS_LIBALSA_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBALSA_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBALSA_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBALSA_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libalsa PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBALSA}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBALSA_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBALSA_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBALSA_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBALSA_DEBUG}>)
    set_property(TARGET CONAN_PKG::libalsa PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBALSA}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBALSA_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBALSA_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBALSA_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBALSA_DEBUG}>)
    set_property(TARGET CONAN_PKG::libalsa PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBALSA_LIST} ${CONAN_CXX_FLAGS_LIBALSA_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBALSA_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBALSA_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBALSA_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBALSA_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBALSA_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBALSA_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBALSA_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBALSA_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES "${CONAN_SYSTEM_LIBS_OPENSSL} ${CONAN_FRAMEWORKS_FOUND_OPENSSL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES "${_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENSSL}" "${CONAN_LIB_DIRS_OPENSSL}"
                                  CONAN_PACKAGE_TARGETS_OPENSSL "${_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES}"
                                  "" openssl)
    set(_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_OPENSSL_DEBUG} ${CONAN_FRAMEWORKS_FOUND_OPENSSL_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENSSL_DEBUG}" "${CONAN_LIB_DIRS_OPENSSL_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_OPENSSL_DEBUG "${_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_DEBUG}"
                                  "debug" openssl)
    set(_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_OPENSSL_RELEASE} ${CONAN_FRAMEWORKS_FOUND_OPENSSL_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENSSL_RELEASE}" "${CONAN_LIB_DIRS_OPENSSL_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_OPENSSL_RELEASE "${_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_RELEASE}"
                                  "release" openssl)
    set(_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_OPENSSL_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_OPENSSL_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENSSL_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_OPENSSL_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_OPENSSL_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" openssl)
    set(_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_OPENSSL_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_OPENSSL_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENSSL_MINSIZEREL}" "${CONAN_LIB_DIRS_OPENSSL_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_OPENSSL_MINSIZEREL "${_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" openssl)

    add_library(CONAN_PKG::openssl INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::openssl PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_OPENSSL} ${_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENSSL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENSSL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENSSL_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_OPENSSL_RELEASE} ${_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENSSL_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENSSL_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENSSL_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_OPENSSL_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENSSL_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENSSL_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENSSL_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_OPENSSL_MINSIZEREL} ${_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENSSL_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENSSL_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENSSL_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_OPENSSL_DEBUG} ${_CONAN_PKG_LIBS_OPENSSL_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENSSL_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENSSL_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENSSL_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::openssl PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_OPENSSL}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_OPENSSL_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_OPENSSL_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_OPENSSL_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_OPENSSL_DEBUG}>)
    set_property(TARGET CONAN_PKG::openssl PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_OPENSSL}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_OPENSSL_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_OPENSSL_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_OPENSSL_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_OPENSSL_DEBUG}>)
    set_property(TARGET CONAN_PKG::openssl PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_OPENSSL_LIST} ${CONAN_CXX_FLAGS_OPENSSL_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_OPENSSL_RELEASE_LIST} ${CONAN_CXX_FLAGS_OPENSSL_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_OPENSSL_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_OPENSSL_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_OPENSSL_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_OPENSSL_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_OPENSSL_DEBUG_LIST}  ${CONAN_CXX_FLAGS_OPENSSL_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES "${CONAN_SYSTEM_LIBS_GDK-PIXBUF} ${CONAN_FRAMEWORKS_FOUND_GDK-PIXBUF} CONAN_PKG::glib CONAN_PKG::libpng CONAN_PKG::libtiff CONAN_PKG::libjpeg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES "${_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GDK-PIXBUF}" "${CONAN_LIB_DIRS_GDK-PIXBUF}"
                                  CONAN_PACKAGE_TARGETS_GDK-PIXBUF "${_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES}"
                                  "" gdk-pixbuf)
    set(_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_GDK-PIXBUF_DEBUG} ${CONAN_FRAMEWORKS_FOUND_GDK-PIXBUF_DEBUG} CONAN_PKG::glib CONAN_PKG::libpng CONAN_PKG::libtiff CONAN_PKG::libjpeg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GDK-PIXBUF_DEBUG}" "${CONAN_LIB_DIRS_GDK-PIXBUF_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_GDK-PIXBUF_DEBUG "${_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_DEBUG}"
                                  "debug" gdk-pixbuf)
    set(_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_GDK-PIXBUF_RELEASE} ${CONAN_FRAMEWORKS_FOUND_GDK-PIXBUF_RELEASE} CONAN_PKG::glib CONAN_PKG::libpng CONAN_PKG::libtiff CONAN_PKG::libjpeg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GDK-PIXBUF_RELEASE}" "${CONAN_LIB_DIRS_GDK-PIXBUF_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_GDK-PIXBUF_RELEASE "${_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_RELEASE}"
                                  "release" gdk-pixbuf)
    set(_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_GDK-PIXBUF_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_GDK-PIXBUF_RELWITHDEBINFO} CONAN_PKG::glib CONAN_PKG::libpng CONAN_PKG::libtiff CONAN_PKG::libjpeg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GDK-PIXBUF_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_GDK-PIXBUF_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_GDK-PIXBUF_RELWITHDEBINFO "${_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" gdk-pixbuf)
    set(_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_GDK-PIXBUF_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_GDK-PIXBUF_MINSIZEREL} CONAN_PKG::glib CONAN_PKG::libpng CONAN_PKG::libtiff CONAN_PKG::libjpeg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GDK-PIXBUF_MINSIZEREL}" "${CONAN_LIB_DIRS_GDK-PIXBUF_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_GDK-PIXBUF_MINSIZEREL "${_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" gdk-pixbuf)

    add_library(CONAN_PKG::gdk-pixbuf INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::gdk-pixbuf PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_GDK-PIXBUF} ${_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GDK-PIXBUF_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GDK-PIXBUF_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GDK-PIXBUF_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_GDK-PIXBUF_RELEASE} ${_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GDK-PIXBUF_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GDK-PIXBUF_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GDK-PIXBUF_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_GDK-PIXBUF_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GDK-PIXBUF_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GDK-PIXBUF_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GDK-PIXBUF_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_GDK-PIXBUF_MINSIZEREL} ${_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GDK-PIXBUF_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GDK-PIXBUF_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GDK-PIXBUF_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_GDK-PIXBUF_DEBUG} ${_CONAN_PKG_LIBS_GDK-PIXBUF_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GDK-PIXBUF_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GDK-PIXBUF_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GDK-PIXBUF_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::gdk-pixbuf PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_GDK-PIXBUF}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_GDK-PIXBUF_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_GDK-PIXBUF_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_GDK-PIXBUF_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_GDK-PIXBUF_DEBUG}>)
    set_property(TARGET CONAN_PKG::gdk-pixbuf PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_GDK-PIXBUF}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_GDK-PIXBUF_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_GDK-PIXBUF_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_GDK-PIXBUF_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_GDK-PIXBUF_DEBUG}>)
    set_property(TARGET CONAN_PKG::gdk-pixbuf PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_GDK-PIXBUF_LIST} ${CONAN_CXX_FLAGS_GDK-PIXBUF_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_GDK-PIXBUF_RELEASE_LIST} ${CONAN_CXX_FLAGS_GDK-PIXBUF_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_GDK-PIXBUF_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_GDK-PIXBUF_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_GDK-PIXBUF_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_GDK-PIXBUF_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_GDK-PIXBUF_DEBUG_LIST}  ${CONAN_CXX_FLAGS_GDK-PIXBUF_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES "${CONAN_SYSTEM_LIBS_AT-SPI2-ATK} ${CONAN_FRAMEWORKS_FOUND_AT-SPI2-ATK} CONAN_PKG::at-spi2-core CONAN_PKG::atk CONAN_PKG::glib CONAN_PKG::libxml2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES "${_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_AT-SPI2-ATK}" "${CONAN_LIB_DIRS_AT-SPI2-ATK}"
                                  CONAN_PACKAGE_TARGETS_AT-SPI2-ATK "${_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES}"
                                  "" at-spi2-atk)
    set(_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_AT-SPI2-ATK_DEBUG} ${CONAN_FRAMEWORKS_FOUND_AT-SPI2-ATK_DEBUG} CONAN_PKG::at-spi2-core CONAN_PKG::atk CONAN_PKG::glib CONAN_PKG::libxml2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_AT-SPI2-ATK_DEBUG}" "${CONAN_LIB_DIRS_AT-SPI2-ATK_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_AT-SPI2-ATK_DEBUG "${_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_DEBUG}"
                                  "debug" at-spi2-atk)
    set(_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_AT-SPI2-ATK_RELEASE} ${CONAN_FRAMEWORKS_FOUND_AT-SPI2-ATK_RELEASE} CONAN_PKG::at-spi2-core CONAN_PKG::atk CONAN_PKG::glib CONAN_PKG::libxml2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_AT-SPI2-ATK_RELEASE}" "${CONAN_LIB_DIRS_AT-SPI2-ATK_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_AT-SPI2-ATK_RELEASE "${_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_RELEASE}"
                                  "release" at-spi2-atk)
    set(_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_AT-SPI2-ATK_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_AT-SPI2-ATK_RELWITHDEBINFO} CONAN_PKG::at-spi2-core CONAN_PKG::atk CONAN_PKG::glib CONAN_PKG::libxml2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_AT-SPI2-ATK_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_AT-SPI2-ATK_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_AT-SPI2-ATK_RELWITHDEBINFO "${_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" at-spi2-atk)
    set(_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_AT-SPI2-ATK_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_AT-SPI2-ATK_MINSIZEREL} CONAN_PKG::at-spi2-core CONAN_PKG::atk CONAN_PKG::glib CONAN_PKG::libxml2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_AT-SPI2-ATK_MINSIZEREL}" "${CONAN_LIB_DIRS_AT-SPI2-ATK_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_AT-SPI2-ATK_MINSIZEREL "${_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" at-spi2-atk)

    add_library(CONAN_PKG::at-spi2-atk INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::at-spi2-atk PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_AT-SPI2-ATK} ${_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-ATK_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-ATK_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_AT-SPI2-ATK_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_AT-SPI2-ATK_RELEASE} ${_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-ATK_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-ATK_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_AT-SPI2-ATK_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_AT-SPI2-ATK_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-ATK_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-ATK_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_AT-SPI2-ATK_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_AT-SPI2-ATK_MINSIZEREL} ${_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-ATK_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-ATK_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_AT-SPI2-ATK_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_AT-SPI2-ATK_DEBUG} ${_CONAN_PKG_LIBS_AT-SPI2-ATK_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-ATK_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-ATK_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_AT-SPI2-ATK_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::at-spi2-atk PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_AT-SPI2-ATK}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_AT-SPI2-ATK_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_AT-SPI2-ATK_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_AT-SPI2-ATK_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_AT-SPI2-ATK_DEBUG}>)
    set_property(TARGET CONAN_PKG::at-spi2-atk PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_AT-SPI2-ATK}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_AT-SPI2-ATK_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_AT-SPI2-ATK_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_AT-SPI2-ATK_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_AT-SPI2-ATK_DEBUG}>)
    set_property(TARGET CONAN_PKG::at-spi2-atk PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_AT-SPI2-ATK_LIST} ${CONAN_CXX_FLAGS_AT-SPI2-ATK_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_AT-SPI2-ATK_RELEASE_LIST} ${CONAN_CXX_FLAGS_AT-SPI2-ATK_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_AT-SPI2-ATK_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_AT-SPI2-ATK_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_AT-SPI2-ATK_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_AT-SPI2-ATK_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_AT-SPI2-ATK_DEBUG_LIST}  ${CONAN_CXX_FLAGS_AT-SPI2-ATK_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBEPOXY} ${CONAN_FRAMEWORKS_FOUND_LIBEPOXY} CONAN_PKG::opengl CONAN_PKG::xorg CONAN_PKG::egl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBEPOXY}" "${CONAN_LIB_DIRS_LIBEPOXY}"
                                  CONAN_PACKAGE_TARGETS_LIBEPOXY "${_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES}"
                                  "" libepoxy)
    set(_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBEPOXY_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBEPOXY_DEBUG} CONAN_PKG::opengl CONAN_PKG::xorg CONAN_PKG::egl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBEPOXY_DEBUG}" "${CONAN_LIB_DIRS_LIBEPOXY_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBEPOXY_DEBUG "${_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_DEBUG}"
                                  "debug" libepoxy)
    set(_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBEPOXY_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBEPOXY_RELEASE} CONAN_PKG::opengl CONAN_PKG::xorg CONAN_PKG::egl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBEPOXY_RELEASE}" "${CONAN_LIB_DIRS_LIBEPOXY_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBEPOXY_RELEASE "${_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_RELEASE}"
                                  "release" libepoxy)
    set(_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBEPOXY_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBEPOXY_RELWITHDEBINFO} CONAN_PKG::opengl CONAN_PKG::xorg CONAN_PKG::egl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBEPOXY_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBEPOXY_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBEPOXY_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libepoxy)
    set(_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBEPOXY_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBEPOXY_MINSIZEREL} CONAN_PKG::opengl CONAN_PKG::xorg CONAN_PKG::egl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBEPOXY_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBEPOXY_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBEPOXY_MINSIZEREL "${_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libepoxy)

    add_library(CONAN_PKG::libepoxy INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libepoxy PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBEPOXY} ${_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBEPOXY_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBEPOXY_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBEPOXY_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBEPOXY_RELEASE} ${_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBEPOXY_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBEPOXY_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBEPOXY_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBEPOXY_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBEPOXY_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBEPOXY_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBEPOXY_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBEPOXY_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBEPOXY_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBEPOXY_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBEPOXY_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBEPOXY_DEBUG} ${_CONAN_PKG_LIBS_LIBEPOXY_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBEPOXY_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBEPOXY_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBEPOXY_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libepoxy PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBEPOXY}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBEPOXY_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBEPOXY_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBEPOXY_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBEPOXY_DEBUG}>)
    set_property(TARGET CONAN_PKG::libepoxy PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBEPOXY}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBEPOXY_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBEPOXY_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBEPOXY_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBEPOXY_DEBUG}>)
    set_property(TARGET CONAN_PKG::libepoxy PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBEPOXY_LIST} ${CONAN_CXX_FLAGS_LIBEPOXY_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBEPOXY_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBEPOXY_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBEPOXY_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBEPOXY_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBEPOXY_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBEPOXY_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBEPOXY_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBEPOXY_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_PANGO_DEPENDENCIES "${CONAN_SYSTEM_LIBS_PANGO} ${CONAN_FRAMEWORKS_FOUND_PANGO} CONAN_PKG::freetype CONAN_PKG::fontconfig CONAN_PKG::xorg CONAN_PKG::cairo CONAN_PKG::harfbuzz CONAN_PKG::glib CONAN_PKG::fribidi")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PANGO_DEPENDENCIES "${_CONAN_PKG_LIBS_PANGO_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PANGO}" "${CONAN_LIB_DIRS_PANGO}"
                                  CONAN_PACKAGE_TARGETS_PANGO "${_CONAN_PKG_LIBS_PANGO_DEPENDENCIES}"
                                  "" pango)
    set(_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_PANGO_DEBUG} ${CONAN_FRAMEWORKS_FOUND_PANGO_DEBUG} CONAN_PKG::freetype CONAN_PKG::fontconfig CONAN_PKG::xorg CONAN_PKG::cairo CONAN_PKG::harfbuzz CONAN_PKG::glib CONAN_PKG::fribidi")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PANGO_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PANGO_DEBUG}" "${CONAN_LIB_DIRS_PANGO_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_PANGO_DEBUG "${_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_DEBUG}"
                                  "debug" pango)
    set(_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_PANGO_RELEASE} ${CONAN_FRAMEWORKS_FOUND_PANGO_RELEASE} CONAN_PKG::freetype CONAN_PKG::fontconfig CONAN_PKG::xorg CONAN_PKG::cairo CONAN_PKG::harfbuzz CONAN_PKG::glib CONAN_PKG::fribidi")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PANGO_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PANGO_RELEASE}" "${CONAN_LIB_DIRS_PANGO_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_PANGO_RELEASE "${_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_RELEASE}"
                                  "release" pango)
    set(_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_PANGO_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_PANGO_RELWITHDEBINFO} CONAN_PKG::freetype CONAN_PKG::fontconfig CONAN_PKG::xorg CONAN_PKG::cairo CONAN_PKG::harfbuzz CONAN_PKG::glib CONAN_PKG::fribidi")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PANGO_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PANGO_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_PANGO_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_PANGO_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" pango)
    set(_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_PANGO_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_PANGO_MINSIZEREL} CONAN_PKG::freetype CONAN_PKG::fontconfig CONAN_PKG::xorg CONAN_PKG::cairo CONAN_PKG::harfbuzz CONAN_PKG::glib CONAN_PKG::fribidi")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PANGO_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PANGO_MINSIZEREL}" "${CONAN_LIB_DIRS_PANGO_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_PANGO_MINSIZEREL "${_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" pango)

    add_library(CONAN_PKG::pango INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::pango PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_PANGO} ${_CONAN_PKG_LIBS_PANGO_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PANGO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PANGO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PANGO_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_PANGO_RELEASE} ${_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PANGO_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PANGO_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PANGO_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_PANGO_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PANGO_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PANGO_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PANGO_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_PANGO_MINSIZEREL} ${_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PANGO_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PANGO_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PANGO_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_PANGO_DEBUG} ${_CONAN_PKG_LIBS_PANGO_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PANGO_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PANGO_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PANGO_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::pango PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_PANGO}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_PANGO_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_PANGO_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_PANGO_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_PANGO_DEBUG}>)
    set_property(TARGET CONAN_PKG::pango PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_PANGO}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_PANGO_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_PANGO_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_PANGO_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_PANGO_DEBUG}>)
    set_property(TARGET CONAN_PKG::pango PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_PANGO_LIST} ${CONAN_CXX_FLAGS_PANGO_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_PANGO_RELEASE_LIST} ${CONAN_CXX_FLAGS_PANGO_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_PANGO_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_PANGO_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_PANGO_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_PANGO_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_PANGO_DEBUG_LIST}  ${CONAN_CXX_FLAGS_PANGO_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBSNDFILE} ${CONAN_FRAMEWORKS_FOUND_LIBSNDFILE} CONAN_PKG::ogg CONAN_PKG::vorbis CONAN_PKG::flac CONAN_PKG::opus")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBSNDFILE}" "${CONAN_LIB_DIRS_LIBSNDFILE}"
                                  CONAN_PACKAGE_TARGETS_LIBSNDFILE "${_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES}"
                                  "" libsndfile)
    set(_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBSNDFILE_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBSNDFILE_DEBUG} CONAN_PKG::ogg CONAN_PKG::vorbis CONAN_PKG::flac CONAN_PKG::opus")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBSNDFILE_DEBUG}" "${CONAN_LIB_DIRS_LIBSNDFILE_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBSNDFILE_DEBUG "${_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_DEBUG}"
                                  "debug" libsndfile)
    set(_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBSNDFILE_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBSNDFILE_RELEASE} CONAN_PKG::ogg CONAN_PKG::vorbis CONAN_PKG::flac CONAN_PKG::opus")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBSNDFILE_RELEASE}" "${CONAN_LIB_DIRS_LIBSNDFILE_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBSNDFILE_RELEASE "${_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_RELEASE}"
                                  "release" libsndfile)
    set(_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBSNDFILE_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBSNDFILE_RELWITHDEBINFO} CONAN_PKG::ogg CONAN_PKG::vorbis CONAN_PKG::flac CONAN_PKG::opus")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBSNDFILE_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBSNDFILE_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBSNDFILE_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libsndfile)
    set(_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBSNDFILE_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBSNDFILE_MINSIZEREL} CONAN_PKG::ogg CONAN_PKG::vorbis CONAN_PKG::flac CONAN_PKG::opus")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBSNDFILE_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBSNDFILE_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBSNDFILE_MINSIZEREL "${_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libsndfile)

    add_library(CONAN_PKG::libsndfile INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libsndfile PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBSNDFILE} ${_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSNDFILE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSNDFILE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBSNDFILE_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBSNDFILE_RELEASE} ${_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSNDFILE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSNDFILE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBSNDFILE_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBSNDFILE_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSNDFILE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSNDFILE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBSNDFILE_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBSNDFILE_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSNDFILE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSNDFILE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBSNDFILE_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBSNDFILE_DEBUG} ${_CONAN_PKG_LIBS_LIBSNDFILE_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSNDFILE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSNDFILE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBSNDFILE_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libsndfile PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBSNDFILE}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBSNDFILE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBSNDFILE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBSNDFILE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBSNDFILE_DEBUG}>)
    set_property(TARGET CONAN_PKG::libsndfile PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBSNDFILE}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBSNDFILE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBSNDFILE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBSNDFILE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBSNDFILE_DEBUG}>)
    set_property(TARGET CONAN_PKG::libsndfile PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBSNDFILE_LIST} ${CONAN_CXX_FLAGS_LIBSNDFILE_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBSNDFILE_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBSNDFILE_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBSNDFILE_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBSNDFILE_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBSNDFILE_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBSNDFILE_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBSNDFILE_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBSNDFILE_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBCAP} ${CONAN_FRAMEWORKS_FOUND_LIBCAP} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBCAP}" "${CONAN_LIB_DIRS_LIBCAP}"
                                  CONAN_PACKAGE_TARGETS_LIBCAP "${_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES}"
                                  "" libcap)
    set(_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBCAP_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBCAP_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBCAP_DEBUG}" "${CONAN_LIB_DIRS_LIBCAP_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBCAP_DEBUG "${_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_DEBUG}"
                                  "debug" libcap)
    set(_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBCAP_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBCAP_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBCAP_RELEASE}" "${CONAN_LIB_DIRS_LIBCAP_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBCAP_RELEASE "${_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_RELEASE}"
                                  "release" libcap)
    set(_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBCAP_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBCAP_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBCAP_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBCAP_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBCAP_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libcap)
    set(_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBCAP_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBCAP_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBCAP_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBCAP_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBCAP_MINSIZEREL "${_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libcap)

    add_library(CONAN_PKG::libcap INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libcap PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBCAP} ${_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBCAP_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBCAP_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBCAP_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBCAP_RELEASE} ${_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBCAP_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBCAP_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBCAP_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBCAP_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBCAP_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBCAP_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBCAP_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBCAP_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBCAP_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBCAP_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBCAP_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBCAP_DEBUG} ${_CONAN_PKG_LIBS_LIBCAP_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBCAP_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBCAP_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBCAP_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libcap PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBCAP}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBCAP_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBCAP_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBCAP_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBCAP_DEBUG}>)
    set_property(TARGET CONAN_PKG::libcap PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBCAP}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBCAP_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBCAP_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBCAP_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBCAP_DEBUG}>)
    set_property(TARGET CONAN_PKG::libcap PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBCAP_LIST} ${CONAN_CXX_FLAGS_LIBCAP_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBCAP_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBCAP_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBCAP_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBCAP_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBCAP_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBCAP_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBCAP_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBCAP_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LCMS_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LCMS} ${CONAN_FRAMEWORKS_FOUND_LCMS} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LCMS_DEPENDENCIES "${_CONAN_PKG_LIBS_LCMS_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LCMS}" "${CONAN_LIB_DIRS_LCMS}"
                                  CONAN_PACKAGE_TARGETS_LCMS "${_CONAN_PKG_LIBS_LCMS_DEPENDENCIES}"
                                  "" lcms)
    set(_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LCMS_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LCMS_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LCMS_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LCMS_DEBUG}" "${CONAN_LIB_DIRS_LCMS_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LCMS_DEBUG "${_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_DEBUG}"
                                  "debug" lcms)
    set(_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LCMS_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LCMS_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LCMS_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LCMS_RELEASE}" "${CONAN_LIB_DIRS_LCMS_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LCMS_RELEASE "${_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_RELEASE}"
                                  "release" lcms)
    set(_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LCMS_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LCMS_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LCMS_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LCMS_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LCMS_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LCMS_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" lcms)
    set(_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LCMS_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LCMS_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LCMS_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LCMS_MINSIZEREL}" "${CONAN_LIB_DIRS_LCMS_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LCMS_MINSIZEREL "${_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" lcms)

    add_library(CONAN_PKG::lcms INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::lcms PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LCMS} ${_CONAN_PKG_LIBS_LCMS_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LCMS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LCMS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LCMS_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LCMS_RELEASE} ${_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LCMS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LCMS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LCMS_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LCMS_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LCMS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LCMS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LCMS_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LCMS_MINSIZEREL} ${_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LCMS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LCMS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LCMS_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LCMS_DEBUG} ${_CONAN_PKG_LIBS_LCMS_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LCMS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LCMS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LCMS_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::lcms PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LCMS}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LCMS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LCMS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LCMS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LCMS_DEBUG}>)
    set_property(TARGET CONAN_PKG::lcms PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LCMS}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LCMS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LCMS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LCMS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LCMS_DEBUG}>)
    set_property(TARGET CONAN_PKG::lcms PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LCMS_LIST} ${CONAN_CXX_FLAGS_LCMS_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LCMS_RELEASE_LIST} ${CONAN_CXX_FLAGS_LCMS_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LCMS_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LCMS_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LCMS_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LCMS_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LCMS_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LCMS_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_JASPER_DEPENDENCIES "${CONAN_SYSTEM_LIBS_JASPER} ${CONAN_FRAMEWORKS_FOUND_JASPER} CONAN_PKG::libjpeg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JASPER_DEPENDENCIES "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JASPER}" "${CONAN_LIB_DIRS_JASPER}"
                                  CONAN_PACKAGE_TARGETS_JASPER "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES}"
                                  "" jasper)
    set(_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_JASPER_DEBUG} ${CONAN_FRAMEWORKS_FOUND_JASPER_DEBUG} CONAN_PKG::libjpeg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JASPER_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JASPER_DEBUG}" "${CONAN_LIB_DIRS_JASPER_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_JASPER_DEBUG "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_DEBUG}"
                                  "debug" jasper)
    set(_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_JASPER_RELEASE} ${CONAN_FRAMEWORKS_FOUND_JASPER_RELEASE} CONAN_PKG::libjpeg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JASPER_RELEASE}" "${CONAN_LIB_DIRS_JASPER_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_JASPER_RELEASE "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELEASE}"
                                  "release" jasper)
    set(_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_JASPER_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_JASPER_RELWITHDEBINFO} CONAN_PKG::libjpeg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JASPER_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_JASPER_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_JASPER_RELWITHDEBINFO "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" jasper)
    set(_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_JASPER_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_JASPER_MINSIZEREL} CONAN_PKG::libjpeg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JASPER_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JASPER_MINSIZEREL}" "${CONAN_LIB_DIRS_JASPER_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_JASPER_MINSIZEREL "${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" jasper)

    add_library(CONAN_PKG::jasper INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::jasper PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_JASPER} ${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JASPER_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JASPER_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_JASPER_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_JASPER_RELEASE} ${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JASPER_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JASPER_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_JASPER_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_JASPER_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JASPER_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JASPER_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_JASPER_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_JASPER_MINSIZEREL} ${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JASPER_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JASPER_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_JASPER_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_JASPER_DEBUG} ${_CONAN_PKG_LIBS_JASPER_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JASPER_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JASPER_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_JASPER_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::jasper PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_JASPER}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_JASPER_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_JASPER_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_JASPER_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_JASPER_DEBUG}>)
    set_property(TARGET CONAN_PKG::jasper PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_JASPER}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_JASPER_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_JASPER_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_JASPER_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_JASPER_DEBUG}>)
    set_property(TARGET CONAN_PKG::jasper PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_JASPER_LIST} ${CONAN_CXX_FLAGS_JASPER_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_JASPER_RELEASE_LIST} ${CONAN_CXX_FLAGS_JASPER_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_JASPER_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_JASPER_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_JASPER_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_JASPER_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_JASPER_DEBUG_LIST}  ${CONAN_CXX_FLAGS_JASPER_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBTIFF} ${CONAN_FRAMEWORKS_FOUND_LIBTIFF} CONAN_PKG::zlib CONAN_PKG::libdeflate CONAN_PKG::xz_utils CONAN_PKG::libjpeg CONAN_PKG::jbig CONAN_PKG::zstd CONAN_PKG::libwebp")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBTIFF}" "${CONAN_LIB_DIRS_LIBTIFF}"
                                  CONAN_PACKAGE_TARGETS_LIBTIFF "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES}"
                                  "" libtiff)
    set(_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBTIFF_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBTIFF_DEBUG} CONAN_PKG::zlib CONAN_PKG::libdeflate CONAN_PKG::xz_utils CONAN_PKG::libjpeg CONAN_PKG::jbig CONAN_PKG::zstd CONAN_PKG::libwebp")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBTIFF_DEBUG}" "${CONAN_LIB_DIRS_LIBTIFF_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBTIFF_DEBUG "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_DEBUG}"
                                  "debug" libtiff)
    set(_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBTIFF_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBTIFF_RELEASE} CONAN_PKG::zlib CONAN_PKG::libdeflate CONAN_PKG::xz_utils CONAN_PKG::libjpeg CONAN_PKG::jbig CONAN_PKG::zstd CONAN_PKG::libwebp")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBTIFF_RELEASE}" "${CONAN_LIB_DIRS_LIBTIFF_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBTIFF_RELEASE "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELEASE}"
                                  "release" libtiff)
    set(_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBTIFF_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBTIFF_RELWITHDEBINFO} CONAN_PKG::zlib CONAN_PKG::libdeflate CONAN_PKG::xz_utils CONAN_PKG::libjpeg CONAN_PKG::jbig CONAN_PKG::zstd CONAN_PKG::libwebp")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBTIFF_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBTIFF_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBTIFF_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libtiff)
    set(_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBTIFF_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBTIFF_MINSIZEREL} CONAN_PKG::zlib CONAN_PKG::libdeflate CONAN_PKG::xz_utils CONAN_PKG::libjpeg CONAN_PKG::jbig CONAN_PKG::zstd CONAN_PKG::libwebp")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBTIFF_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBTIFF_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBTIFF_MINSIZEREL "${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libtiff)

    add_library(CONAN_PKG::libtiff INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libtiff PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBTIFF} ${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBTIFF_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBTIFF_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBTIFF_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBTIFF_RELEASE} ${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBTIFF_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBTIFF_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBTIFF_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBTIFF_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBTIFF_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBTIFF_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBTIFF_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBTIFF_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBTIFF_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBTIFF_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBTIFF_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBTIFF_DEBUG} ${_CONAN_PKG_LIBS_LIBTIFF_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBTIFF_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBTIFF_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBTIFF_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libtiff PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBTIFF}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBTIFF_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBTIFF_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBTIFF_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBTIFF_DEBUG}>)
    set_property(TARGET CONAN_PKG::libtiff PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBTIFF}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBTIFF_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBTIFF_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBTIFF_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBTIFF_DEBUG}>)
    set_property(TARGET CONAN_PKG::libtiff PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBTIFF_LIST} ${CONAN_CXX_FLAGS_LIBTIFF_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBTIFF_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBTIFF_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBTIFF_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBTIFF_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBTIFF_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBTIFF_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBTIFF_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBTIFF_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_FLAC_DEPENDENCIES "${CONAN_SYSTEM_LIBS_FLAC} ${CONAN_FRAMEWORKS_FOUND_FLAC} CONAN_PKG::ogg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FLAC_DEPENDENCIES "${_CONAN_PKG_LIBS_FLAC_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FLAC}" "${CONAN_LIB_DIRS_FLAC}"
                                  CONAN_PACKAGE_TARGETS_FLAC "${_CONAN_PKG_LIBS_FLAC_DEPENDENCIES}"
                                  "" flac)
    set(_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_FLAC_DEBUG} ${CONAN_FRAMEWORKS_FOUND_FLAC_DEBUG} CONAN_PKG::ogg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FLAC_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FLAC_DEBUG}" "${CONAN_LIB_DIRS_FLAC_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_FLAC_DEBUG "${_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_DEBUG}"
                                  "debug" flac)
    set(_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_FLAC_RELEASE} ${CONAN_FRAMEWORKS_FOUND_FLAC_RELEASE} CONAN_PKG::ogg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FLAC_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FLAC_RELEASE}" "${CONAN_LIB_DIRS_FLAC_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_FLAC_RELEASE "${_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_RELEASE}"
                                  "release" flac)
    set(_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_FLAC_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_FLAC_RELWITHDEBINFO} CONAN_PKG::ogg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FLAC_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FLAC_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_FLAC_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_FLAC_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" flac)
    set(_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_FLAC_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_FLAC_MINSIZEREL} CONAN_PKG::ogg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FLAC_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FLAC_MINSIZEREL}" "${CONAN_LIB_DIRS_FLAC_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_FLAC_MINSIZEREL "${_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" flac)

    add_library(CONAN_PKG::flac INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::flac PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_FLAC} ${_CONAN_PKG_LIBS_FLAC_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FLAC_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FLAC_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FLAC_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_FLAC_RELEASE} ${_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FLAC_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FLAC_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FLAC_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_FLAC_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FLAC_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FLAC_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FLAC_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_FLAC_MINSIZEREL} ${_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FLAC_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FLAC_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FLAC_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_FLAC_DEBUG} ${_CONAN_PKG_LIBS_FLAC_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FLAC_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FLAC_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FLAC_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::flac PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_FLAC}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_FLAC_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_FLAC_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_FLAC_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_FLAC_DEBUG}>)
    set_property(TARGET CONAN_PKG::flac PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_FLAC}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_FLAC_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_FLAC_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_FLAC_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_FLAC_DEBUG}>)
    set_property(TARGET CONAN_PKG::flac PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_FLAC_LIST} ${CONAN_CXX_FLAGS_FLAC_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_FLAC_RELEASE_LIST} ${CONAN_CXX_FLAGS_FLAC_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_FLAC_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_FLAC_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_FLAC_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_FLAC_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_FLAC_DEBUG_LIST}  ${CONAN_CXX_FLAGS_FLAC_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES "${CONAN_SYSTEM_LIBS_VORBIS} ${CONAN_FRAMEWORKS_FOUND_VORBIS} CONAN_PKG::ogg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_VORBIS_DEPENDENCIES "${_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_VORBIS}" "${CONAN_LIB_DIRS_VORBIS}"
                                  CONAN_PACKAGE_TARGETS_VORBIS "${_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES}"
                                  "" vorbis)
    set(_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_VORBIS_DEBUG} ${CONAN_FRAMEWORKS_FOUND_VORBIS_DEBUG} CONAN_PKG::ogg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_VORBIS_DEBUG}" "${CONAN_LIB_DIRS_VORBIS_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_VORBIS_DEBUG "${_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_DEBUG}"
                                  "debug" vorbis)
    set(_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_VORBIS_RELEASE} ${CONAN_FRAMEWORKS_FOUND_VORBIS_RELEASE} CONAN_PKG::ogg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_VORBIS_RELEASE}" "${CONAN_LIB_DIRS_VORBIS_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_VORBIS_RELEASE "${_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_RELEASE}"
                                  "release" vorbis)
    set(_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_VORBIS_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_VORBIS_RELWITHDEBINFO} CONAN_PKG::ogg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_VORBIS_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_VORBIS_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_VORBIS_RELWITHDEBINFO "${_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" vorbis)
    set(_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_VORBIS_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_VORBIS_MINSIZEREL} CONAN_PKG::ogg")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_VORBIS_MINSIZEREL}" "${CONAN_LIB_DIRS_VORBIS_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_VORBIS_MINSIZEREL "${_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" vorbis)

    add_library(CONAN_PKG::vorbis INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::vorbis PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_VORBIS} ${_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VORBIS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VORBIS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_VORBIS_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_VORBIS_RELEASE} ${_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VORBIS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VORBIS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_VORBIS_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_VORBIS_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VORBIS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VORBIS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_VORBIS_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_VORBIS_MINSIZEREL} ${_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VORBIS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VORBIS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_VORBIS_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_VORBIS_DEBUG} ${_CONAN_PKG_LIBS_VORBIS_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VORBIS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_VORBIS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_VORBIS_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::vorbis PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_VORBIS}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_VORBIS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_VORBIS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_VORBIS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_VORBIS_DEBUG}>)
    set_property(TARGET CONAN_PKG::vorbis PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_VORBIS}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_VORBIS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_VORBIS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_VORBIS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_VORBIS_DEBUG}>)
    set_property(TARGET CONAN_PKG::vorbis PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_VORBIS_LIST} ${CONAN_CXX_FLAGS_VORBIS_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_VORBIS_RELEASE_LIST} ${CONAN_CXX_FLAGS_VORBIS_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_VORBIS_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_VORBIS_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_VORBIS_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_VORBIS_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_VORBIS_DEBUG_LIST}  ${CONAN_CXX_FLAGS_VORBIS_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_OPUS_DEPENDENCIES "${CONAN_SYSTEM_LIBS_OPUS} ${CONAN_FRAMEWORKS_FOUND_OPUS} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPUS_DEPENDENCIES "${_CONAN_PKG_LIBS_OPUS_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPUS}" "${CONAN_LIB_DIRS_OPUS}"
                                  CONAN_PACKAGE_TARGETS_OPUS "${_CONAN_PKG_LIBS_OPUS_DEPENDENCIES}"
                                  "" opus)
    set(_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_OPUS_DEBUG} ${CONAN_FRAMEWORKS_FOUND_OPUS_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPUS_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPUS_DEBUG}" "${CONAN_LIB_DIRS_OPUS_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_OPUS_DEBUG "${_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_DEBUG}"
                                  "debug" opus)
    set(_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_OPUS_RELEASE} ${CONAN_FRAMEWORKS_FOUND_OPUS_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPUS_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPUS_RELEASE}" "${CONAN_LIB_DIRS_OPUS_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_OPUS_RELEASE "${_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_RELEASE}"
                                  "release" opus)
    set(_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_OPUS_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_OPUS_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPUS_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPUS_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_OPUS_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_OPUS_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" opus)
    set(_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_OPUS_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_OPUS_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPUS_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPUS_MINSIZEREL}" "${CONAN_LIB_DIRS_OPUS_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_OPUS_MINSIZEREL "${_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" opus)

    add_library(CONAN_PKG::opus INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::opus PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_OPUS} ${_CONAN_PKG_LIBS_OPUS_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPUS_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_OPUS_RELEASE} ${_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPUS_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_OPUS_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPUS_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_OPUS_MINSIZEREL} ${_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPUS_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_OPUS_DEBUG} ${_CONAN_PKG_LIBS_OPUS_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPUS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPUS_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::opus PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_OPUS}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_OPUS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_OPUS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_OPUS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_OPUS_DEBUG}>)
    set_property(TARGET CONAN_PKG::opus PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_OPUS}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_OPUS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_OPUS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_OPUS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_OPUS_DEBUG}>)
    set_property(TARGET CONAN_PKG::opus PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_OPUS_LIST} ${CONAN_CXX_FLAGS_OPUS_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_OPUS_RELEASE_LIST} ${CONAN_CXX_FLAGS_OPUS_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_OPUS_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_OPUS_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_OPUS_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_OPUS_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_OPUS_DEBUG_LIST}  ${CONAN_CXX_FLAGS_OPUS_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES "${CONAN_SYSTEM_LIBS_CAIRO} ${CONAN_FRAMEWORKS_FOUND_CAIRO} CONAN_PKG::pixman CONAN_PKG::expat CONAN_PKG::lzo CONAN_PKG::zlib CONAN_PKG::freetype CONAN_PKG::fontconfig CONAN_PKG::libpng CONAN_PKG::glib CONAN_PKG::xorg CONAN_PKG::opengl CONAN_PKG::egl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CAIRO_DEPENDENCIES "${_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CAIRO}" "${CONAN_LIB_DIRS_CAIRO}"
                                  CONAN_PACKAGE_TARGETS_CAIRO "${_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES}"
                                  "" cairo)
    set(_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_CAIRO_DEBUG} ${CONAN_FRAMEWORKS_FOUND_CAIRO_DEBUG} CONAN_PKG::pixman CONAN_PKG::expat CONAN_PKG::lzo CONAN_PKG::zlib CONAN_PKG::freetype CONAN_PKG::fontconfig CONAN_PKG::libpng CONAN_PKG::glib CONAN_PKG::xorg CONAN_PKG::opengl CONAN_PKG::egl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CAIRO_DEBUG}" "${CONAN_LIB_DIRS_CAIRO_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_CAIRO_DEBUG "${_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_DEBUG}"
                                  "debug" cairo)
    set(_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_CAIRO_RELEASE} ${CONAN_FRAMEWORKS_FOUND_CAIRO_RELEASE} CONAN_PKG::pixman CONAN_PKG::expat CONAN_PKG::lzo CONAN_PKG::zlib CONAN_PKG::freetype CONAN_PKG::fontconfig CONAN_PKG::libpng CONAN_PKG::glib CONAN_PKG::xorg CONAN_PKG::opengl CONAN_PKG::egl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CAIRO_RELEASE}" "${CONAN_LIB_DIRS_CAIRO_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_CAIRO_RELEASE "${_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_RELEASE}"
                                  "release" cairo)
    set(_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_CAIRO_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_CAIRO_RELWITHDEBINFO} CONAN_PKG::pixman CONAN_PKG::expat CONAN_PKG::lzo CONAN_PKG::zlib CONAN_PKG::freetype CONAN_PKG::fontconfig CONAN_PKG::libpng CONAN_PKG::glib CONAN_PKG::xorg CONAN_PKG::opengl CONAN_PKG::egl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CAIRO_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_CAIRO_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_CAIRO_RELWITHDEBINFO "${_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" cairo)
    set(_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_CAIRO_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_CAIRO_MINSIZEREL} CONAN_PKG::pixman CONAN_PKG::expat CONAN_PKG::lzo CONAN_PKG::zlib CONAN_PKG::freetype CONAN_PKG::fontconfig CONAN_PKG::libpng CONAN_PKG::glib CONAN_PKG::xorg CONAN_PKG::opengl CONAN_PKG::egl")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_CAIRO_MINSIZEREL}" "${CONAN_LIB_DIRS_CAIRO_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_CAIRO_MINSIZEREL "${_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" cairo)

    add_library(CONAN_PKG::cairo INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::cairo PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_CAIRO} ${_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CAIRO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CAIRO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CAIRO_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_CAIRO_RELEASE} ${_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CAIRO_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CAIRO_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CAIRO_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_CAIRO_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CAIRO_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CAIRO_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CAIRO_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_CAIRO_MINSIZEREL} ${_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CAIRO_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CAIRO_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CAIRO_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_CAIRO_DEBUG} ${_CONAN_PKG_LIBS_CAIRO_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CAIRO_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_CAIRO_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_CAIRO_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::cairo PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_CAIRO}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_CAIRO_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_CAIRO_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_CAIRO_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_CAIRO_DEBUG}>)
    set_property(TARGET CONAN_PKG::cairo PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_CAIRO}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_CAIRO_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_CAIRO_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_CAIRO_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_CAIRO_DEBUG}>)
    set_property(TARGET CONAN_PKG::cairo PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_CAIRO_LIST} ${CONAN_CXX_FLAGS_CAIRO_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_CAIRO_RELEASE_LIST} ${CONAN_CXX_FLAGS_CAIRO_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_CAIRO_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_CAIRO_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_CAIRO_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_CAIRO_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_CAIRO_DEBUG_LIST}  ${CONAN_CXX_FLAGS_CAIRO_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES "${CONAN_SYSTEM_LIBS_AT-SPI2-CORE} ${CONAN_FRAMEWORKS_FOUND_AT-SPI2-CORE} CONAN_PKG::glib CONAN_PKG::dbus")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES "${_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_AT-SPI2-CORE}" "${CONAN_LIB_DIRS_AT-SPI2-CORE}"
                                  CONAN_PACKAGE_TARGETS_AT-SPI2-CORE "${_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES}"
                                  "" at-spi2-core)
    set(_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_AT-SPI2-CORE_DEBUG} ${CONAN_FRAMEWORKS_FOUND_AT-SPI2-CORE_DEBUG} CONAN_PKG::glib CONAN_PKG::dbus")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_AT-SPI2-CORE_DEBUG}" "${CONAN_LIB_DIRS_AT-SPI2-CORE_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_AT-SPI2-CORE_DEBUG "${_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_DEBUG}"
                                  "debug" at-spi2-core)
    set(_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_AT-SPI2-CORE_RELEASE} ${CONAN_FRAMEWORKS_FOUND_AT-SPI2-CORE_RELEASE} CONAN_PKG::glib CONAN_PKG::dbus")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_AT-SPI2-CORE_RELEASE}" "${CONAN_LIB_DIRS_AT-SPI2-CORE_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_AT-SPI2-CORE_RELEASE "${_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_RELEASE}"
                                  "release" at-spi2-core)
    set(_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_AT-SPI2-CORE_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_AT-SPI2-CORE_RELWITHDEBINFO} CONAN_PKG::glib CONAN_PKG::dbus")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_AT-SPI2-CORE_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_AT-SPI2-CORE_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_AT-SPI2-CORE_RELWITHDEBINFO "${_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" at-spi2-core)
    set(_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_AT-SPI2-CORE_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_AT-SPI2-CORE_MINSIZEREL} CONAN_PKG::glib CONAN_PKG::dbus")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_AT-SPI2-CORE_MINSIZEREL}" "${CONAN_LIB_DIRS_AT-SPI2-CORE_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_AT-SPI2-CORE_MINSIZEREL "${_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" at-spi2-core)

    add_library(CONAN_PKG::at-spi2-core INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::at-spi2-core PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_AT-SPI2-CORE} ${_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-CORE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-CORE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_AT-SPI2-CORE_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_AT-SPI2-CORE_RELEASE} ${_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-CORE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-CORE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_AT-SPI2-CORE_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_AT-SPI2-CORE_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-CORE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-CORE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_AT-SPI2-CORE_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_AT-SPI2-CORE_MINSIZEREL} ${_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-CORE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-CORE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_AT-SPI2-CORE_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_AT-SPI2-CORE_DEBUG} ${_CONAN_PKG_LIBS_AT-SPI2-CORE_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-CORE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_AT-SPI2-CORE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_AT-SPI2-CORE_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::at-spi2-core PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_AT-SPI2-CORE}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_AT-SPI2-CORE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_AT-SPI2-CORE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_AT-SPI2-CORE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_AT-SPI2-CORE_DEBUG}>)
    set_property(TARGET CONAN_PKG::at-spi2-core PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_AT-SPI2-CORE}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_AT-SPI2-CORE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_AT-SPI2-CORE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_AT-SPI2-CORE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_AT-SPI2-CORE_DEBUG}>)
    set_property(TARGET CONAN_PKG::at-spi2-core PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_AT-SPI2-CORE_LIST} ${CONAN_CXX_FLAGS_AT-SPI2-CORE_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_AT-SPI2-CORE_RELEASE_LIST} ${CONAN_CXX_FLAGS_AT-SPI2-CORE_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_AT-SPI2-CORE_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_AT-SPI2-CORE_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_AT-SPI2-CORE_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_AT-SPI2-CORE_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_AT-SPI2-CORE_DEBUG_LIST}  ${CONAN_CXX_FLAGS_AT-SPI2-CORE_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_ATK_DEPENDENCIES "${CONAN_SYSTEM_LIBS_ATK} ${CONAN_FRAMEWORKS_FOUND_ATK} CONAN_PKG::glib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ATK_DEPENDENCIES "${_CONAN_PKG_LIBS_ATK_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ATK}" "${CONAN_LIB_DIRS_ATK}"
                                  CONAN_PACKAGE_TARGETS_ATK "${_CONAN_PKG_LIBS_ATK_DEPENDENCIES}"
                                  "" atk)
    set(_CONAN_PKG_LIBS_ATK_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_ATK_DEBUG} ${CONAN_FRAMEWORKS_FOUND_ATK_DEBUG} CONAN_PKG::glib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ATK_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_ATK_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ATK_DEBUG}" "${CONAN_LIB_DIRS_ATK_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_ATK_DEBUG "${_CONAN_PKG_LIBS_ATK_DEPENDENCIES_DEBUG}"
                                  "debug" atk)
    set(_CONAN_PKG_LIBS_ATK_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_ATK_RELEASE} ${CONAN_FRAMEWORKS_FOUND_ATK_RELEASE} CONAN_PKG::glib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ATK_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_ATK_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ATK_RELEASE}" "${CONAN_LIB_DIRS_ATK_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_ATK_RELEASE "${_CONAN_PKG_LIBS_ATK_DEPENDENCIES_RELEASE}"
                                  "release" atk)
    set(_CONAN_PKG_LIBS_ATK_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_ATK_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_ATK_RELWITHDEBINFO} CONAN_PKG::glib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ATK_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ATK_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ATK_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_ATK_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_ATK_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ATK_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" atk)
    set(_CONAN_PKG_LIBS_ATK_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_ATK_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_ATK_MINSIZEREL} CONAN_PKG::glib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ATK_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_ATK_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ATK_MINSIZEREL}" "${CONAN_LIB_DIRS_ATK_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_ATK_MINSIZEREL "${_CONAN_PKG_LIBS_ATK_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" atk)

    add_library(CONAN_PKG::atk INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::atk PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_ATK} ${_CONAN_PKG_LIBS_ATK_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ATK_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ATK_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ATK_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_ATK_RELEASE} ${_CONAN_PKG_LIBS_ATK_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ATK_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ATK_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ATK_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_ATK_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_ATK_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ATK_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ATK_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ATK_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_ATK_MINSIZEREL} ${_CONAN_PKG_LIBS_ATK_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ATK_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ATK_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ATK_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_ATK_DEBUG} ${_CONAN_PKG_LIBS_ATK_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ATK_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ATK_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ATK_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::atk PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_ATK}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_ATK_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_ATK_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_ATK_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_ATK_DEBUG}>)
    set_property(TARGET CONAN_PKG::atk PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_ATK}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_ATK_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_ATK_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_ATK_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_ATK_DEBUG}>)
    set_property(TARGET CONAN_PKG::atk PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_ATK_LIST} ${CONAN_CXX_FLAGS_ATK_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_ATK_RELEASE_LIST} ${CONAN_CXX_FLAGS_ATK_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_ATK_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_ATK_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_ATK_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_ATK_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_ATK_DEBUG_LIST}  ${CONAN_CXX_FLAGS_ATK_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBXML2} ${CONAN_FRAMEWORKS_FOUND_LIBXML2} CONAN_PKG::zlib CONAN_PKG::libiconv")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBXML2}" "${CONAN_LIB_DIRS_LIBXML2}"
                                  CONAN_PACKAGE_TARGETS_LIBXML2 "${_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES}"
                                  "" libxml2)
    set(_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBXML2_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBXML2_DEBUG} CONAN_PKG::zlib CONAN_PKG::libiconv")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBXML2_DEBUG}" "${CONAN_LIB_DIRS_LIBXML2_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBXML2_DEBUG "${_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_DEBUG}"
                                  "debug" libxml2)
    set(_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBXML2_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBXML2_RELEASE} CONAN_PKG::zlib CONAN_PKG::libiconv")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBXML2_RELEASE}" "${CONAN_LIB_DIRS_LIBXML2_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBXML2_RELEASE "${_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_RELEASE}"
                                  "release" libxml2)
    set(_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBXML2_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBXML2_RELWITHDEBINFO} CONAN_PKG::zlib CONAN_PKG::libiconv")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBXML2_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBXML2_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBXML2_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libxml2)
    set(_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBXML2_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBXML2_MINSIZEREL} CONAN_PKG::zlib CONAN_PKG::libiconv")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBXML2_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBXML2_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBXML2_MINSIZEREL "${_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libxml2)

    add_library(CONAN_PKG::libxml2 INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libxml2 PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBXML2} ${_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBXML2_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBXML2_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBXML2_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBXML2_RELEASE} ${_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBXML2_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBXML2_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBXML2_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBXML2_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBXML2_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBXML2_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBXML2_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBXML2_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBXML2_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBXML2_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBXML2_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBXML2_DEBUG} ${_CONAN_PKG_LIBS_LIBXML2_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBXML2_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBXML2_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBXML2_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libxml2 PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBXML2}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBXML2_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBXML2_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBXML2_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBXML2_DEBUG}>)
    set_property(TARGET CONAN_PKG::libxml2 PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBXML2}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBXML2_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBXML2_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBXML2_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBXML2_DEBUG}>)
    set_property(TARGET CONAN_PKG::libxml2 PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBXML2_LIST} ${CONAN_CXX_FLAGS_LIBXML2_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBXML2_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBXML2_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBXML2_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBXML2_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBXML2_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBXML2_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBXML2_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBXML2_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES "${CONAN_SYSTEM_LIBS_HARFBUZZ} ${CONAN_FRAMEWORKS_FOUND_HARFBUZZ} CONAN_PKG::freetype CONAN_PKG::glib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES "${_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_HARFBUZZ}" "${CONAN_LIB_DIRS_HARFBUZZ}"
                                  CONAN_PACKAGE_TARGETS_HARFBUZZ "${_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES}"
                                  "" harfbuzz)
    set(_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_HARFBUZZ_DEBUG} ${CONAN_FRAMEWORKS_FOUND_HARFBUZZ_DEBUG} CONAN_PKG::freetype CONAN_PKG::glib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_HARFBUZZ_DEBUG}" "${CONAN_LIB_DIRS_HARFBUZZ_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_HARFBUZZ_DEBUG "${_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_DEBUG}"
                                  "debug" harfbuzz)
    set(_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_HARFBUZZ_RELEASE} ${CONAN_FRAMEWORKS_FOUND_HARFBUZZ_RELEASE} CONAN_PKG::freetype CONAN_PKG::glib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_HARFBUZZ_RELEASE}" "${CONAN_LIB_DIRS_HARFBUZZ_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_HARFBUZZ_RELEASE "${_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_RELEASE}"
                                  "release" harfbuzz)
    set(_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_HARFBUZZ_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_HARFBUZZ_RELWITHDEBINFO} CONAN_PKG::freetype CONAN_PKG::glib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_HARFBUZZ_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_HARFBUZZ_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_HARFBUZZ_RELWITHDEBINFO "${_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" harfbuzz)
    set(_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_HARFBUZZ_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_HARFBUZZ_MINSIZEREL} CONAN_PKG::freetype CONAN_PKG::glib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_HARFBUZZ_MINSIZEREL}" "${CONAN_LIB_DIRS_HARFBUZZ_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_HARFBUZZ_MINSIZEREL "${_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" harfbuzz)

    add_library(CONAN_PKG::harfbuzz INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::harfbuzz PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_HARFBUZZ} ${_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_HARFBUZZ_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_HARFBUZZ_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_HARFBUZZ_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_HARFBUZZ_RELEASE} ${_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_HARFBUZZ_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_HARFBUZZ_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_HARFBUZZ_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_HARFBUZZ_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_HARFBUZZ_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_HARFBUZZ_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_HARFBUZZ_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_HARFBUZZ_MINSIZEREL} ${_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_HARFBUZZ_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_HARFBUZZ_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_HARFBUZZ_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_HARFBUZZ_DEBUG} ${_CONAN_PKG_LIBS_HARFBUZZ_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_HARFBUZZ_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_HARFBUZZ_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_HARFBUZZ_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::harfbuzz PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_HARFBUZZ}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_HARFBUZZ_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_HARFBUZZ_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_HARFBUZZ_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_HARFBUZZ_DEBUG}>)
    set_property(TARGET CONAN_PKG::harfbuzz PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_HARFBUZZ}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_HARFBUZZ_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_HARFBUZZ_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_HARFBUZZ_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_HARFBUZZ_DEBUG}>)
    set_property(TARGET CONAN_PKG::harfbuzz PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_HARFBUZZ_LIST} ${CONAN_CXX_FLAGS_HARFBUZZ_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_HARFBUZZ_RELEASE_LIST} ${CONAN_CXX_FLAGS_HARFBUZZ_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_HARFBUZZ_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_HARFBUZZ_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_HARFBUZZ_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_HARFBUZZ_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_HARFBUZZ_DEBUG_LIST}  ${CONAN_CXX_FLAGS_HARFBUZZ_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES "${CONAN_SYSTEM_LIBS_FRIBIDI} ${CONAN_FRAMEWORKS_FOUND_FRIBIDI} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES "${_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FRIBIDI}" "${CONAN_LIB_DIRS_FRIBIDI}"
                                  CONAN_PACKAGE_TARGETS_FRIBIDI "${_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES}"
                                  "" fribidi)
    set(_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_FRIBIDI_DEBUG} ${CONAN_FRAMEWORKS_FOUND_FRIBIDI_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FRIBIDI_DEBUG}" "${CONAN_LIB_DIRS_FRIBIDI_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_FRIBIDI_DEBUG "${_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_DEBUG}"
                                  "debug" fribidi)
    set(_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_FRIBIDI_RELEASE} ${CONAN_FRAMEWORKS_FOUND_FRIBIDI_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FRIBIDI_RELEASE}" "${CONAN_LIB_DIRS_FRIBIDI_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_FRIBIDI_RELEASE "${_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_RELEASE}"
                                  "release" fribidi)
    set(_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_FRIBIDI_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_FRIBIDI_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FRIBIDI_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_FRIBIDI_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_FRIBIDI_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" fribidi)
    set(_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_FRIBIDI_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_FRIBIDI_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FRIBIDI_MINSIZEREL}" "${CONAN_LIB_DIRS_FRIBIDI_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_FRIBIDI_MINSIZEREL "${_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" fribidi)

    add_library(CONAN_PKG::fribidi INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::fribidi PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_FRIBIDI} ${_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FRIBIDI_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FRIBIDI_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FRIBIDI_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_FRIBIDI_RELEASE} ${_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FRIBIDI_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FRIBIDI_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FRIBIDI_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_FRIBIDI_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FRIBIDI_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FRIBIDI_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FRIBIDI_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_FRIBIDI_MINSIZEREL} ${_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FRIBIDI_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FRIBIDI_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FRIBIDI_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_FRIBIDI_DEBUG} ${_CONAN_PKG_LIBS_FRIBIDI_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FRIBIDI_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FRIBIDI_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FRIBIDI_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::fribidi PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_FRIBIDI}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_FRIBIDI_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_FRIBIDI_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_FRIBIDI_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_FRIBIDI_DEBUG}>)
    set_property(TARGET CONAN_PKG::fribidi PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_FRIBIDI}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_FRIBIDI_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_FRIBIDI_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_FRIBIDI_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_FRIBIDI_DEBUG}>)
    set_property(TARGET CONAN_PKG::fribidi PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_FRIBIDI_LIST} ${CONAN_CXX_FLAGS_FRIBIDI_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_FRIBIDI_RELEASE_LIST} ${CONAN_CXX_FLAGS_FRIBIDI_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_FRIBIDI_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_FRIBIDI_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_FRIBIDI_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_FRIBIDI_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_FRIBIDI_DEBUG_LIST}  ${CONAN_CXX_FLAGS_FRIBIDI_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBJPEG} ${CONAN_FRAMEWORKS_FOUND_LIBJPEG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBJPEG}" "${CONAN_LIB_DIRS_LIBJPEG}"
                                  CONAN_PACKAGE_TARGETS_LIBJPEG "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES}"
                                  "" libjpeg)
    set(_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBJPEG_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBJPEG_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBJPEG_DEBUG}" "${CONAN_LIB_DIRS_LIBJPEG_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBJPEG_DEBUG "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_DEBUG}"
                                  "debug" libjpeg)
    set(_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBJPEG_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBJPEG_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBJPEG_RELEASE}" "${CONAN_LIB_DIRS_LIBJPEG_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBJPEG_RELEASE "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELEASE}"
                                  "release" libjpeg)
    set(_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBJPEG_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBJPEG_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBJPEG_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBJPEG_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBJPEG_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libjpeg)
    set(_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBJPEG_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBJPEG_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBJPEG_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBJPEG_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBJPEG_MINSIZEREL "${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libjpeg)

    add_library(CONAN_PKG::libjpeg INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libjpeg PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBJPEG} ${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBJPEG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBJPEG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBJPEG_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBJPEG_RELEASE} ${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBJPEG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBJPEG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBJPEG_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBJPEG_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBJPEG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBJPEG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBJPEG_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBJPEG_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBJPEG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBJPEG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBJPEG_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBJPEG_DEBUG} ${_CONAN_PKG_LIBS_LIBJPEG_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBJPEG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBJPEG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBJPEG_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libjpeg PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBJPEG}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBJPEG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBJPEG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBJPEG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBJPEG_DEBUG}>)
    set_property(TARGET CONAN_PKG::libjpeg PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBJPEG}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBJPEG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBJPEG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBJPEG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBJPEG_DEBUG}>)
    set_property(TARGET CONAN_PKG::libjpeg PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBJPEG_LIST} ${CONAN_CXX_FLAGS_LIBJPEG_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBJPEG_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBJPEG_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBJPEG_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBJPEG_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBJPEG_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBJPEG_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBJPEG_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBJPEG_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBWEBP} ${CONAN_FRAMEWORKS_FOUND_LIBWEBP} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBWEBP}" "${CONAN_LIB_DIRS_LIBWEBP}"
                                  CONAN_PACKAGE_TARGETS_LIBWEBP "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES}"
                                  "" libwebp)
    set(_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBWEBP_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBWEBP_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBWEBP_DEBUG}" "${CONAN_LIB_DIRS_LIBWEBP_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBWEBP_DEBUG "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_DEBUG}"
                                  "debug" libwebp)
    set(_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBWEBP_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBWEBP_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBWEBP_RELEASE}" "${CONAN_LIB_DIRS_LIBWEBP_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBWEBP_RELEASE "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELEASE}"
                                  "release" libwebp)
    set(_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBWEBP_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBWEBP_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBWEBP_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBWEBP_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBWEBP_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libwebp)
    set(_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBWEBP_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBWEBP_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBWEBP_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBWEBP_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBWEBP_MINSIZEREL "${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libwebp)

    add_library(CONAN_PKG::libwebp INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libwebp PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBWEBP} ${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBWEBP_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBWEBP_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBWEBP_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBWEBP_RELEASE} ${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBWEBP_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBWEBP_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBWEBP_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBWEBP_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBWEBP_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBWEBP_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBWEBP_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBWEBP_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBWEBP_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBWEBP_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBWEBP_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBWEBP_DEBUG} ${_CONAN_PKG_LIBS_LIBWEBP_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBWEBP_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBWEBP_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBWEBP_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libwebp PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBWEBP}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBWEBP_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBWEBP_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBWEBP_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBWEBP_DEBUG}>)
    set_property(TARGET CONAN_PKG::libwebp PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBWEBP}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBWEBP_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBWEBP_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBWEBP_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBWEBP_DEBUG}>)
    set_property(TARGET CONAN_PKG::libwebp PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBWEBP_LIST} ${CONAN_CXX_FLAGS_LIBWEBP_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBWEBP_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBWEBP_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBWEBP_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBWEBP_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBWEBP_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBWEBP_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBWEBP_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBWEBP_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBDEFLATE} ${CONAN_FRAMEWORKS_FOUND_LIBDEFLATE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBDEFLATE}" "${CONAN_LIB_DIRS_LIBDEFLATE}"
                                  CONAN_PACKAGE_TARGETS_LIBDEFLATE "${_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES}"
                                  "" libdeflate)
    set(_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBDEFLATE_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBDEFLATE_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBDEFLATE_DEBUG}" "${CONAN_LIB_DIRS_LIBDEFLATE_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBDEFLATE_DEBUG "${_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_DEBUG}"
                                  "debug" libdeflate)
    set(_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBDEFLATE_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBDEFLATE_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBDEFLATE_RELEASE}" "${CONAN_LIB_DIRS_LIBDEFLATE_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBDEFLATE_RELEASE "${_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_RELEASE}"
                                  "release" libdeflate)
    set(_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBDEFLATE_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBDEFLATE_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBDEFLATE_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBDEFLATE_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBDEFLATE_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libdeflate)
    set(_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBDEFLATE_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBDEFLATE_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBDEFLATE_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBDEFLATE_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBDEFLATE_MINSIZEREL "${_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libdeflate)

    add_library(CONAN_PKG::libdeflate INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libdeflate PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBDEFLATE} ${_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBDEFLATE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBDEFLATE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBDEFLATE_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBDEFLATE_RELEASE} ${_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBDEFLATE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBDEFLATE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBDEFLATE_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBDEFLATE_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBDEFLATE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBDEFLATE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBDEFLATE_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBDEFLATE_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBDEFLATE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBDEFLATE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBDEFLATE_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBDEFLATE_DEBUG} ${_CONAN_PKG_LIBS_LIBDEFLATE_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBDEFLATE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBDEFLATE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBDEFLATE_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libdeflate PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBDEFLATE}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBDEFLATE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBDEFLATE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBDEFLATE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBDEFLATE_DEBUG}>)
    set_property(TARGET CONAN_PKG::libdeflate PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBDEFLATE}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBDEFLATE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBDEFLATE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBDEFLATE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBDEFLATE_DEBUG}>)
    set_property(TARGET CONAN_PKG::libdeflate PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBDEFLATE_LIST} ${CONAN_CXX_FLAGS_LIBDEFLATE_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBDEFLATE_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBDEFLATE_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBDEFLATE_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBDEFLATE_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBDEFLATE_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBDEFLATE_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBDEFLATE_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBDEFLATE_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES "${CONAN_SYSTEM_LIBS_XZ_UTILS} ${CONAN_FRAMEWORKS_FOUND_XZ_UTILS} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES "${_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_XZ_UTILS}" "${CONAN_LIB_DIRS_XZ_UTILS}"
                                  CONAN_PACKAGE_TARGETS_XZ_UTILS "${_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES}"
                                  "" xz_utils)
    set(_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_XZ_UTILS_DEBUG} ${CONAN_FRAMEWORKS_FOUND_XZ_UTILS_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_XZ_UTILS_DEBUG}" "${CONAN_LIB_DIRS_XZ_UTILS_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_XZ_UTILS_DEBUG "${_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_DEBUG}"
                                  "debug" xz_utils)
    set(_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_XZ_UTILS_RELEASE} ${CONAN_FRAMEWORKS_FOUND_XZ_UTILS_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_XZ_UTILS_RELEASE}" "${CONAN_LIB_DIRS_XZ_UTILS_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_XZ_UTILS_RELEASE "${_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_RELEASE}"
                                  "release" xz_utils)
    set(_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_XZ_UTILS_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_XZ_UTILS_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_XZ_UTILS_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_XZ_UTILS_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_XZ_UTILS_RELWITHDEBINFO "${_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" xz_utils)
    set(_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_XZ_UTILS_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_XZ_UTILS_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_XZ_UTILS_MINSIZEREL}" "${CONAN_LIB_DIRS_XZ_UTILS_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_XZ_UTILS_MINSIZEREL "${_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" xz_utils)

    add_library(CONAN_PKG::xz_utils INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::xz_utils PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_XZ_UTILS} ${_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XZ_UTILS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XZ_UTILS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_XZ_UTILS_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_XZ_UTILS_RELEASE} ${_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XZ_UTILS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XZ_UTILS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_XZ_UTILS_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_XZ_UTILS_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XZ_UTILS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XZ_UTILS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_XZ_UTILS_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_XZ_UTILS_MINSIZEREL} ${_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XZ_UTILS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XZ_UTILS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_XZ_UTILS_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_XZ_UTILS_DEBUG} ${_CONAN_PKG_LIBS_XZ_UTILS_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XZ_UTILS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XZ_UTILS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_XZ_UTILS_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::xz_utils PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_XZ_UTILS}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_XZ_UTILS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_XZ_UTILS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_XZ_UTILS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_XZ_UTILS_DEBUG}>)
    set_property(TARGET CONAN_PKG::xz_utils PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_XZ_UTILS}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_XZ_UTILS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_XZ_UTILS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_XZ_UTILS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_XZ_UTILS_DEBUG}>)
    set_property(TARGET CONAN_PKG::xz_utils PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_XZ_UTILS_LIST} ${CONAN_CXX_FLAGS_XZ_UTILS_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_XZ_UTILS_RELEASE_LIST} ${CONAN_CXX_FLAGS_XZ_UTILS_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_XZ_UTILS_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_XZ_UTILS_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_XZ_UTILS_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_XZ_UTILS_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_XZ_UTILS_DEBUG_LIST}  ${CONAN_CXX_FLAGS_XZ_UTILS_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_JBIG_DEPENDENCIES "${CONAN_SYSTEM_LIBS_JBIG} ${CONAN_FRAMEWORKS_FOUND_JBIG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JBIG_DEPENDENCIES "${_CONAN_PKG_LIBS_JBIG_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JBIG}" "${CONAN_LIB_DIRS_JBIG}"
                                  CONAN_PACKAGE_TARGETS_JBIG "${_CONAN_PKG_LIBS_JBIG_DEPENDENCIES}"
                                  "" jbig)
    set(_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_JBIG_DEBUG} ${CONAN_FRAMEWORKS_FOUND_JBIG_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JBIG_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JBIG_DEBUG}" "${CONAN_LIB_DIRS_JBIG_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_JBIG_DEBUG "${_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_DEBUG}"
                                  "debug" jbig)
    set(_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_JBIG_RELEASE} ${CONAN_FRAMEWORKS_FOUND_JBIG_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JBIG_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JBIG_RELEASE}" "${CONAN_LIB_DIRS_JBIG_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_JBIG_RELEASE "${_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_RELEASE}"
                                  "release" jbig)
    set(_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_JBIG_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_JBIG_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JBIG_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JBIG_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_JBIG_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_JBIG_RELWITHDEBINFO "${_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" jbig)
    set(_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_JBIG_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_JBIG_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_JBIG_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_JBIG_MINSIZEREL}" "${CONAN_LIB_DIRS_JBIG_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_JBIG_MINSIZEREL "${_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" jbig)

    add_library(CONAN_PKG::jbig INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::jbig PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_JBIG} ${_CONAN_PKG_LIBS_JBIG_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JBIG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JBIG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_JBIG_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_JBIG_RELEASE} ${_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JBIG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JBIG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_JBIG_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_JBIG_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JBIG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JBIG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_JBIG_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_JBIG_MINSIZEREL} ${_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JBIG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JBIG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_JBIG_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_JBIG_DEBUG} ${_CONAN_PKG_LIBS_JBIG_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JBIG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_JBIG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_JBIG_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::jbig PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_JBIG}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_JBIG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_JBIG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_JBIG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_JBIG_DEBUG}>)
    set_property(TARGET CONAN_PKG::jbig PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_JBIG}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_JBIG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_JBIG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_JBIG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_JBIG_DEBUG}>)
    set_property(TARGET CONAN_PKG::jbig PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_JBIG_LIST} ${CONAN_CXX_FLAGS_JBIG_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_JBIG_RELEASE_LIST} ${CONAN_CXX_FLAGS_JBIG_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_JBIG_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_JBIG_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_JBIG_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_JBIG_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_JBIG_DEBUG_LIST}  ${CONAN_CXX_FLAGS_JBIG_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES "${CONAN_SYSTEM_LIBS_ZSTD} ${CONAN_FRAMEWORKS_FOUND_ZSTD} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZSTD_DEPENDENCIES "${_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZSTD}" "${CONAN_LIB_DIRS_ZSTD}"
                                  CONAN_PACKAGE_TARGETS_ZSTD "${_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES}"
                                  "" zstd)
    set(_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_ZSTD_DEBUG} ${CONAN_FRAMEWORKS_FOUND_ZSTD_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZSTD_DEBUG}" "${CONAN_LIB_DIRS_ZSTD_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_ZSTD_DEBUG "${_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_DEBUG}"
                                  "debug" zstd)
    set(_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_ZSTD_RELEASE} ${CONAN_FRAMEWORKS_FOUND_ZSTD_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZSTD_RELEASE}" "${CONAN_LIB_DIRS_ZSTD_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_ZSTD_RELEASE "${_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_RELEASE}"
                                  "release" zstd)
    set(_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_ZSTD_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_ZSTD_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZSTD_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_ZSTD_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_ZSTD_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" zstd)
    set(_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_ZSTD_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_ZSTD_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZSTD_MINSIZEREL}" "${CONAN_LIB_DIRS_ZSTD_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_ZSTD_MINSIZEREL "${_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" zstd)

    add_library(CONAN_PKG::zstd INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::zstd PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_ZSTD} ${_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZSTD_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZSTD_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ZSTD_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_ZSTD_RELEASE} ${_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZSTD_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZSTD_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ZSTD_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_ZSTD_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZSTD_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZSTD_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ZSTD_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_ZSTD_MINSIZEREL} ${_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZSTD_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZSTD_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ZSTD_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_ZSTD_DEBUG} ${_CONAN_PKG_LIBS_ZSTD_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZSTD_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZSTD_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ZSTD_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::zstd PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_ZSTD}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_ZSTD_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_ZSTD_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_ZSTD_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_ZSTD_DEBUG}>)
    set_property(TARGET CONAN_PKG::zstd PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_ZSTD}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_ZSTD_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_ZSTD_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_ZSTD_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_ZSTD_DEBUG}>)
    set_property(TARGET CONAN_PKG::zstd PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_ZSTD_LIST} ${CONAN_CXX_FLAGS_ZSTD_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_ZSTD_RELEASE_LIST} ${CONAN_CXX_FLAGS_ZSTD_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_ZSTD_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_ZSTD_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_ZSTD_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_ZSTD_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_ZSTD_DEBUG_LIST}  ${CONAN_CXX_FLAGS_ZSTD_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_OGG_DEPENDENCIES "${CONAN_SYSTEM_LIBS_OGG} ${CONAN_FRAMEWORKS_FOUND_OGG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OGG_DEPENDENCIES "${_CONAN_PKG_LIBS_OGG_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OGG}" "${CONAN_LIB_DIRS_OGG}"
                                  CONAN_PACKAGE_TARGETS_OGG "${_CONAN_PKG_LIBS_OGG_DEPENDENCIES}"
                                  "" ogg)
    set(_CONAN_PKG_LIBS_OGG_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_OGG_DEBUG} ${CONAN_FRAMEWORKS_FOUND_OGG_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OGG_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_OGG_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OGG_DEBUG}" "${CONAN_LIB_DIRS_OGG_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_OGG_DEBUG "${_CONAN_PKG_LIBS_OGG_DEPENDENCIES_DEBUG}"
                                  "debug" ogg)
    set(_CONAN_PKG_LIBS_OGG_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_OGG_RELEASE} ${CONAN_FRAMEWORKS_FOUND_OGG_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OGG_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_OGG_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OGG_RELEASE}" "${CONAN_LIB_DIRS_OGG_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_OGG_RELEASE "${_CONAN_PKG_LIBS_OGG_DEPENDENCIES_RELEASE}"
                                  "release" ogg)
    set(_CONAN_PKG_LIBS_OGG_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_OGG_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_OGG_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OGG_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OGG_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OGG_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_OGG_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_OGG_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OGG_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" ogg)
    set(_CONAN_PKG_LIBS_OGG_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_OGG_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_OGG_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OGG_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_OGG_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OGG_MINSIZEREL}" "${CONAN_LIB_DIRS_OGG_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_OGG_MINSIZEREL "${_CONAN_PKG_LIBS_OGG_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" ogg)

    add_library(CONAN_PKG::ogg INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::ogg PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_OGG} ${_CONAN_PKG_LIBS_OGG_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OGG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OGG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OGG_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_OGG_RELEASE} ${_CONAN_PKG_LIBS_OGG_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OGG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OGG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OGG_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_OGG_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_OGG_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OGG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OGG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OGG_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_OGG_MINSIZEREL} ${_CONAN_PKG_LIBS_OGG_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OGG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OGG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OGG_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_OGG_DEBUG} ${_CONAN_PKG_LIBS_OGG_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OGG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OGG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OGG_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::ogg PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_OGG}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_OGG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_OGG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_OGG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_OGG_DEBUG}>)
    set_property(TARGET CONAN_PKG::ogg PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_OGG}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_OGG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_OGG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_OGG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_OGG_DEBUG}>)
    set_property(TARGET CONAN_PKG::ogg PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_OGG_LIST} ${CONAN_CXX_FLAGS_OGG_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_OGG_RELEASE_LIST} ${CONAN_CXX_FLAGS_OGG_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_OGG_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_OGG_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_OGG_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_OGG_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_OGG_DEBUG_LIST}  ${CONAN_CXX_FLAGS_OGG_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES "${CONAN_SYSTEM_LIBS_OPENGL} ${CONAN_FRAMEWORKS_FOUND_OPENGL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENGL_DEPENDENCIES "${_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENGL}" "${CONAN_LIB_DIRS_OPENGL}"
                                  CONAN_PACKAGE_TARGETS_OPENGL "${_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES}"
                                  "" opengl)
    set(_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_OPENGL_DEBUG} ${CONAN_FRAMEWORKS_FOUND_OPENGL_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENGL_DEBUG}" "${CONAN_LIB_DIRS_OPENGL_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_OPENGL_DEBUG "${_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_DEBUG}"
                                  "debug" opengl)
    set(_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_OPENGL_RELEASE} ${CONAN_FRAMEWORKS_FOUND_OPENGL_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENGL_RELEASE}" "${CONAN_LIB_DIRS_OPENGL_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_OPENGL_RELEASE "${_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_RELEASE}"
                                  "release" opengl)
    set(_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_OPENGL_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_OPENGL_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENGL_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_OPENGL_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_OPENGL_RELWITHDEBINFO "${_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" opengl)
    set(_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_OPENGL_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_OPENGL_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_OPENGL_MINSIZEREL}" "${CONAN_LIB_DIRS_OPENGL_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_OPENGL_MINSIZEREL "${_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" opengl)

    add_library(CONAN_PKG::opengl INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::opengl PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_OPENGL} ${_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENGL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENGL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENGL_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_OPENGL_RELEASE} ${_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENGL_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENGL_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENGL_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_OPENGL_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENGL_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENGL_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENGL_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_OPENGL_MINSIZEREL} ${_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENGL_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENGL_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENGL_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_OPENGL_DEBUG} ${_CONAN_PKG_LIBS_OPENGL_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENGL_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_OPENGL_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_OPENGL_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::opengl PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_OPENGL}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_OPENGL_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_OPENGL_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_OPENGL_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_OPENGL_DEBUG}>)
    set_property(TARGET CONAN_PKG::opengl PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_OPENGL}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_OPENGL_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_OPENGL_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_OPENGL_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_OPENGL_DEBUG}>)
    set_property(TARGET CONAN_PKG::opengl PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_OPENGL_LIST} ${CONAN_CXX_FLAGS_OPENGL_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_OPENGL_RELEASE_LIST} ${CONAN_CXX_FLAGS_OPENGL_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_OPENGL_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_OPENGL_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_OPENGL_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_OPENGL_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_OPENGL_DEBUG_LIST}  ${CONAN_CXX_FLAGS_OPENGL_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_XORG_DEPENDENCIES "${CONAN_SYSTEM_LIBS_XORG} ${CONAN_FRAMEWORKS_FOUND_XORG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_XORG_DEPENDENCIES "${_CONAN_PKG_LIBS_XORG_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_XORG}" "${CONAN_LIB_DIRS_XORG}"
                                  CONAN_PACKAGE_TARGETS_XORG "${_CONAN_PKG_LIBS_XORG_DEPENDENCIES}"
                                  "" xorg)
    set(_CONAN_PKG_LIBS_XORG_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_XORG_DEBUG} ${CONAN_FRAMEWORKS_FOUND_XORG_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_XORG_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_XORG_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_XORG_DEBUG}" "${CONAN_LIB_DIRS_XORG_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_XORG_DEBUG "${_CONAN_PKG_LIBS_XORG_DEPENDENCIES_DEBUG}"
                                  "debug" xorg)
    set(_CONAN_PKG_LIBS_XORG_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_XORG_RELEASE} ${CONAN_FRAMEWORKS_FOUND_XORG_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_XORG_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_XORG_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_XORG_RELEASE}" "${CONAN_LIB_DIRS_XORG_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_XORG_RELEASE "${_CONAN_PKG_LIBS_XORG_DEPENDENCIES_RELEASE}"
                                  "release" xorg)
    set(_CONAN_PKG_LIBS_XORG_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_XORG_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_XORG_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_XORG_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_XORG_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_XORG_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_XORG_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_XORG_RELWITHDEBINFO "${_CONAN_PKG_LIBS_XORG_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" xorg)
    set(_CONAN_PKG_LIBS_XORG_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_XORG_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_XORG_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_XORG_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_XORG_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_XORG_MINSIZEREL}" "${CONAN_LIB_DIRS_XORG_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_XORG_MINSIZEREL "${_CONAN_PKG_LIBS_XORG_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" xorg)

    add_library(CONAN_PKG::xorg INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::xorg PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_XORG} ${_CONAN_PKG_LIBS_XORG_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XORG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XORG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_XORG_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_XORG_RELEASE} ${_CONAN_PKG_LIBS_XORG_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XORG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XORG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_XORG_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_XORG_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_XORG_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XORG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XORG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_XORG_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_XORG_MINSIZEREL} ${_CONAN_PKG_LIBS_XORG_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XORG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XORG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_XORG_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_XORG_DEBUG} ${_CONAN_PKG_LIBS_XORG_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XORG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_XORG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_XORG_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::xorg PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_XORG}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_XORG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_XORG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_XORG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_XORG_DEBUG}>)
    set_property(TARGET CONAN_PKG::xorg PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_XORG}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_XORG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_XORG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_XORG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_XORG_DEBUG}>)
    set_property(TARGET CONAN_PKG::xorg PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_XORG_LIST} ${CONAN_CXX_FLAGS_XORG_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_XORG_RELEASE_LIST} ${CONAN_CXX_FLAGS_XORG_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_XORG_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_XORG_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_XORG_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_XORG_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_XORG_DEBUG_LIST}  ${CONAN_CXX_FLAGS_XORG_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_GLIB_DEPENDENCIES "${CONAN_SYSTEM_LIBS_GLIB} ${CONAN_FRAMEWORKS_FOUND_GLIB} CONAN_PKG::zlib CONAN_PKG::libffi CONAN_PKG::pcre CONAN_PKG::libelf CONAN_PKG::libmount CONAN_PKG::libselinux")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GLIB_DEPENDENCIES "${_CONAN_PKG_LIBS_GLIB_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GLIB}" "${CONAN_LIB_DIRS_GLIB}"
                                  CONAN_PACKAGE_TARGETS_GLIB "${_CONAN_PKG_LIBS_GLIB_DEPENDENCIES}"
                                  "" glib)
    set(_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_GLIB_DEBUG} ${CONAN_FRAMEWORKS_FOUND_GLIB_DEBUG} CONAN_PKG::zlib CONAN_PKG::libffi CONAN_PKG::pcre CONAN_PKG::libelf CONAN_PKG::libmount CONAN_PKG::libselinux")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GLIB_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GLIB_DEBUG}" "${CONAN_LIB_DIRS_GLIB_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_GLIB_DEBUG "${_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_DEBUG}"
                                  "debug" glib)
    set(_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_GLIB_RELEASE} ${CONAN_FRAMEWORKS_FOUND_GLIB_RELEASE} CONAN_PKG::zlib CONAN_PKG::libffi CONAN_PKG::pcre CONAN_PKG::libelf CONAN_PKG::libmount CONAN_PKG::libselinux")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GLIB_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GLIB_RELEASE}" "${CONAN_LIB_DIRS_GLIB_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_GLIB_RELEASE "${_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_RELEASE}"
                                  "release" glib)
    set(_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_GLIB_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_GLIB_RELWITHDEBINFO} CONAN_PKG::zlib CONAN_PKG::libffi CONAN_PKG::pcre CONAN_PKG::libelf CONAN_PKG::libmount CONAN_PKG::libselinux")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GLIB_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GLIB_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_GLIB_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_GLIB_RELWITHDEBINFO "${_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" glib)
    set(_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_GLIB_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_GLIB_MINSIZEREL} CONAN_PKG::zlib CONAN_PKG::libffi CONAN_PKG::pcre CONAN_PKG::libelf CONAN_PKG::libmount CONAN_PKG::libselinux")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_GLIB_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_GLIB_MINSIZEREL}" "${CONAN_LIB_DIRS_GLIB_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_GLIB_MINSIZEREL "${_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" glib)

    add_library(CONAN_PKG::glib INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::glib PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_GLIB} ${_CONAN_PKG_LIBS_GLIB_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLIB_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLIB_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GLIB_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_GLIB_RELEASE} ${_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLIB_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLIB_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GLIB_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_GLIB_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLIB_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLIB_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GLIB_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_GLIB_MINSIZEREL} ${_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLIB_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLIB_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GLIB_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_GLIB_DEBUG} ${_CONAN_PKG_LIBS_GLIB_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLIB_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_GLIB_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_GLIB_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::glib PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_GLIB}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_GLIB_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_GLIB_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_GLIB_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_GLIB_DEBUG}>)
    set_property(TARGET CONAN_PKG::glib PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_GLIB}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_GLIB_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_GLIB_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_GLIB_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_GLIB_DEBUG}>)
    set_property(TARGET CONAN_PKG::glib PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_GLIB_LIST} ${CONAN_CXX_FLAGS_GLIB_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_GLIB_RELEASE_LIST} ${CONAN_CXX_FLAGS_GLIB_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_GLIB_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_GLIB_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_GLIB_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_GLIB_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_GLIB_DEBUG_LIST}  ${CONAN_CXX_FLAGS_GLIB_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES "${CONAN_SYSTEM_LIBS_PIXMAN} ${CONAN_FRAMEWORKS_FOUND_PIXMAN} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES "${_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PIXMAN}" "${CONAN_LIB_DIRS_PIXMAN}"
                                  CONAN_PACKAGE_TARGETS_PIXMAN "${_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES}"
                                  "" pixman)
    set(_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_PIXMAN_DEBUG} ${CONAN_FRAMEWORKS_FOUND_PIXMAN_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PIXMAN_DEBUG}" "${CONAN_LIB_DIRS_PIXMAN_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_PIXMAN_DEBUG "${_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_DEBUG}"
                                  "debug" pixman)
    set(_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_PIXMAN_RELEASE} ${CONAN_FRAMEWORKS_FOUND_PIXMAN_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PIXMAN_RELEASE}" "${CONAN_LIB_DIRS_PIXMAN_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_PIXMAN_RELEASE "${_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_RELEASE}"
                                  "release" pixman)
    set(_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_PIXMAN_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_PIXMAN_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PIXMAN_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_PIXMAN_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_PIXMAN_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" pixman)
    set(_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_PIXMAN_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_PIXMAN_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PIXMAN_MINSIZEREL}" "${CONAN_LIB_DIRS_PIXMAN_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_PIXMAN_MINSIZEREL "${_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" pixman)

    add_library(CONAN_PKG::pixman INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::pixman PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_PIXMAN} ${_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PIXMAN_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PIXMAN_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PIXMAN_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_PIXMAN_RELEASE} ${_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PIXMAN_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PIXMAN_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PIXMAN_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_PIXMAN_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PIXMAN_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PIXMAN_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PIXMAN_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_PIXMAN_MINSIZEREL} ${_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PIXMAN_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PIXMAN_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PIXMAN_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_PIXMAN_DEBUG} ${_CONAN_PKG_LIBS_PIXMAN_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PIXMAN_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PIXMAN_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PIXMAN_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::pixman PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_PIXMAN}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_PIXMAN_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_PIXMAN_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_PIXMAN_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_PIXMAN_DEBUG}>)
    set_property(TARGET CONAN_PKG::pixman PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_PIXMAN}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_PIXMAN_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_PIXMAN_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_PIXMAN_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_PIXMAN_DEBUG}>)
    set_property(TARGET CONAN_PKG::pixman PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_PIXMAN_LIST} ${CONAN_CXX_FLAGS_PIXMAN_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_PIXMAN_RELEASE_LIST} ${CONAN_CXX_FLAGS_PIXMAN_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_PIXMAN_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_PIXMAN_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_PIXMAN_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_PIXMAN_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_PIXMAN_DEBUG_LIST}  ${CONAN_CXX_FLAGS_PIXMAN_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LZO_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LZO} ${CONAN_FRAMEWORKS_FOUND_LZO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LZO_DEPENDENCIES "${_CONAN_PKG_LIBS_LZO_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LZO}" "${CONAN_LIB_DIRS_LZO}"
                                  CONAN_PACKAGE_TARGETS_LZO "${_CONAN_PKG_LIBS_LZO_DEPENDENCIES}"
                                  "" lzo)
    set(_CONAN_PKG_LIBS_LZO_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LZO_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LZO_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LZO_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LZO_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LZO_DEBUG}" "${CONAN_LIB_DIRS_LZO_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LZO_DEBUG "${_CONAN_PKG_LIBS_LZO_DEPENDENCIES_DEBUG}"
                                  "debug" lzo)
    set(_CONAN_PKG_LIBS_LZO_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LZO_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LZO_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LZO_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LZO_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LZO_RELEASE}" "${CONAN_LIB_DIRS_LZO_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LZO_RELEASE "${_CONAN_PKG_LIBS_LZO_DEPENDENCIES_RELEASE}"
                                  "release" lzo)
    set(_CONAN_PKG_LIBS_LZO_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LZO_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LZO_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LZO_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LZO_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LZO_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LZO_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LZO_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LZO_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" lzo)
    set(_CONAN_PKG_LIBS_LZO_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LZO_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LZO_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LZO_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LZO_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LZO_MINSIZEREL}" "${CONAN_LIB_DIRS_LZO_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LZO_MINSIZEREL "${_CONAN_PKG_LIBS_LZO_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" lzo)

    add_library(CONAN_PKG::lzo INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::lzo PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LZO} ${_CONAN_PKG_LIBS_LZO_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LZO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LZO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LZO_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LZO_RELEASE} ${_CONAN_PKG_LIBS_LZO_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LZO_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LZO_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LZO_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LZO_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LZO_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LZO_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LZO_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LZO_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LZO_MINSIZEREL} ${_CONAN_PKG_LIBS_LZO_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LZO_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LZO_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LZO_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LZO_DEBUG} ${_CONAN_PKG_LIBS_LZO_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LZO_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LZO_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LZO_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::lzo PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LZO}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LZO_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LZO_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LZO_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LZO_DEBUG}>)
    set_property(TARGET CONAN_PKG::lzo PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LZO}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LZO_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LZO_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LZO_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LZO_DEBUG}>)
    set_property(TARGET CONAN_PKG::lzo PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LZO_LIST} ${CONAN_CXX_FLAGS_LZO_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LZO_RELEASE_LIST} ${CONAN_CXX_FLAGS_LZO_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LZO_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LZO_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LZO_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LZO_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LZO_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LZO_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES "${CONAN_SYSTEM_LIBS_FONTCONFIG} ${CONAN_FRAMEWORKS_FOUND_FONTCONFIG} CONAN_PKG::freetype CONAN_PKG::expat CONAN_PKG::libuuid")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES "${_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FONTCONFIG}" "${CONAN_LIB_DIRS_FONTCONFIG}"
                                  CONAN_PACKAGE_TARGETS_FONTCONFIG "${_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES}"
                                  "" fontconfig)
    set(_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_FONTCONFIG_DEBUG} ${CONAN_FRAMEWORKS_FOUND_FONTCONFIG_DEBUG} CONAN_PKG::freetype CONAN_PKG::expat CONAN_PKG::libuuid")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FONTCONFIG_DEBUG}" "${CONAN_LIB_DIRS_FONTCONFIG_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_FONTCONFIG_DEBUG "${_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_DEBUG}"
                                  "debug" fontconfig)
    set(_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_FONTCONFIG_RELEASE} ${CONAN_FRAMEWORKS_FOUND_FONTCONFIG_RELEASE} CONAN_PKG::freetype CONAN_PKG::expat CONAN_PKG::libuuid")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FONTCONFIG_RELEASE}" "${CONAN_LIB_DIRS_FONTCONFIG_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_FONTCONFIG_RELEASE "${_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_RELEASE}"
                                  "release" fontconfig)
    set(_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_FONTCONFIG_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_FONTCONFIG_RELWITHDEBINFO} CONAN_PKG::freetype CONAN_PKG::expat CONAN_PKG::libuuid")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FONTCONFIG_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_FONTCONFIG_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_FONTCONFIG_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" fontconfig)
    set(_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_FONTCONFIG_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_FONTCONFIG_MINSIZEREL} CONAN_PKG::freetype CONAN_PKG::expat CONAN_PKG::libuuid")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FONTCONFIG_MINSIZEREL}" "${CONAN_LIB_DIRS_FONTCONFIG_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_FONTCONFIG_MINSIZEREL "${_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" fontconfig)

    add_library(CONAN_PKG::fontconfig INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::fontconfig PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_FONTCONFIG} ${_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FONTCONFIG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FONTCONFIG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FONTCONFIG_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_FONTCONFIG_RELEASE} ${_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FONTCONFIG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FONTCONFIG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FONTCONFIG_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_FONTCONFIG_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FONTCONFIG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FONTCONFIG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FONTCONFIG_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_FONTCONFIG_MINSIZEREL} ${_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FONTCONFIG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FONTCONFIG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FONTCONFIG_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_FONTCONFIG_DEBUG} ${_CONAN_PKG_LIBS_FONTCONFIG_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FONTCONFIG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FONTCONFIG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FONTCONFIG_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::fontconfig PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_FONTCONFIG}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_FONTCONFIG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_FONTCONFIG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_FONTCONFIG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_FONTCONFIG_DEBUG}>)
    set_property(TARGET CONAN_PKG::fontconfig PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_FONTCONFIG}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_FONTCONFIG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_FONTCONFIG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_FONTCONFIG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_FONTCONFIG_DEBUG}>)
    set_property(TARGET CONAN_PKG::fontconfig PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_FONTCONFIG_LIST} ${CONAN_CXX_FLAGS_FONTCONFIG_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_FONTCONFIG_RELEASE_LIST} ${CONAN_CXX_FLAGS_FONTCONFIG_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_FONTCONFIG_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_FONTCONFIG_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_FONTCONFIG_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_FONTCONFIG_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_FONTCONFIG_DEBUG_LIST}  ${CONAN_CXX_FLAGS_FONTCONFIG_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_EGL_DEPENDENCIES "${CONAN_SYSTEM_LIBS_EGL} ${CONAN_FRAMEWORKS_FOUND_EGL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EGL_DEPENDENCIES "${_CONAN_PKG_LIBS_EGL_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EGL}" "${CONAN_LIB_DIRS_EGL}"
                                  CONAN_PACKAGE_TARGETS_EGL "${_CONAN_PKG_LIBS_EGL_DEPENDENCIES}"
                                  "" egl)
    set(_CONAN_PKG_LIBS_EGL_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_EGL_DEBUG} ${CONAN_FRAMEWORKS_FOUND_EGL_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EGL_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_EGL_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EGL_DEBUG}" "${CONAN_LIB_DIRS_EGL_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_EGL_DEBUG "${_CONAN_PKG_LIBS_EGL_DEPENDENCIES_DEBUG}"
                                  "debug" egl)
    set(_CONAN_PKG_LIBS_EGL_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_EGL_RELEASE} ${CONAN_FRAMEWORKS_FOUND_EGL_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EGL_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_EGL_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EGL_RELEASE}" "${CONAN_LIB_DIRS_EGL_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_EGL_RELEASE "${_CONAN_PKG_LIBS_EGL_DEPENDENCIES_RELEASE}"
                                  "release" egl)
    set(_CONAN_PKG_LIBS_EGL_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_EGL_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_EGL_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EGL_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_EGL_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EGL_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_EGL_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_EGL_RELWITHDEBINFO "${_CONAN_PKG_LIBS_EGL_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" egl)
    set(_CONAN_PKG_LIBS_EGL_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_EGL_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_EGL_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EGL_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_EGL_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EGL_MINSIZEREL}" "${CONAN_LIB_DIRS_EGL_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_EGL_MINSIZEREL "${_CONAN_PKG_LIBS_EGL_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" egl)

    add_library(CONAN_PKG::egl INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::egl PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_EGL} ${_CONAN_PKG_LIBS_EGL_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EGL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EGL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_EGL_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_EGL_RELEASE} ${_CONAN_PKG_LIBS_EGL_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EGL_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EGL_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_EGL_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_EGL_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_EGL_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EGL_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EGL_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_EGL_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_EGL_MINSIZEREL} ${_CONAN_PKG_LIBS_EGL_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EGL_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EGL_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_EGL_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_EGL_DEBUG} ${_CONAN_PKG_LIBS_EGL_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EGL_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EGL_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_EGL_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::egl PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_EGL}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_EGL_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_EGL_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_EGL_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_EGL_DEBUG}>)
    set_property(TARGET CONAN_PKG::egl PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_EGL}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_EGL_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_EGL_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_EGL_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_EGL_DEBUG}>)
    set_property(TARGET CONAN_PKG::egl PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_EGL_LIST} ${CONAN_CXX_FLAGS_EGL_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_EGL_RELEASE_LIST} ${CONAN_CXX_FLAGS_EGL_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_EGL_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_EGL_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_EGL_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_EGL_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_EGL_DEBUG_LIST}  ${CONAN_CXX_FLAGS_EGL_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_DBUS_DEPENDENCIES "${CONAN_SYSTEM_LIBS_DBUS} ${CONAN_FRAMEWORKS_FOUND_DBUS} CONAN_PKG::expat")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DBUS_DEPENDENCIES "${_CONAN_PKG_LIBS_DBUS_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DBUS}" "${CONAN_LIB_DIRS_DBUS}"
                                  CONAN_PACKAGE_TARGETS_DBUS "${_CONAN_PKG_LIBS_DBUS_DEPENDENCIES}"
                                  "" dbus)
    set(_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_DBUS_DEBUG} ${CONAN_FRAMEWORKS_FOUND_DBUS_DEBUG} CONAN_PKG::expat")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DBUS_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DBUS_DEBUG}" "${CONAN_LIB_DIRS_DBUS_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_DBUS_DEBUG "${_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_DEBUG}"
                                  "debug" dbus)
    set(_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_DBUS_RELEASE} ${CONAN_FRAMEWORKS_FOUND_DBUS_RELEASE} CONAN_PKG::expat")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DBUS_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DBUS_RELEASE}" "${CONAN_LIB_DIRS_DBUS_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_DBUS_RELEASE "${_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_RELEASE}"
                                  "release" dbus)
    set(_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_DBUS_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_DBUS_RELWITHDEBINFO} CONAN_PKG::expat")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DBUS_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DBUS_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_DBUS_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_DBUS_RELWITHDEBINFO "${_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" dbus)
    set(_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_DBUS_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_DBUS_MINSIZEREL} CONAN_PKG::expat")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_DBUS_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_DBUS_MINSIZEREL}" "${CONAN_LIB_DIRS_DBUS_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_DBUS_MINSIZEREL "${_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" dbus)

    add_library(CONAN_PKG::dbus INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::dbus PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_DBUS} ${_CONAN_PKG_LIBS_DBUS_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DBUS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DBUS_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DBUS_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_DBUS_RELEASE} ${_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DBUS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DBUS_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DBUS_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_DBUS_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DBUS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DBUS_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DBUS_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_DBUS_MINSIZEREL} ${_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DBUS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DBUS_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DBUS_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_DBUS_DEBUG} ${_CONAN_PKG_LIBS_DBUS_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DBUS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_DBUS_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_DBUS_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::dbus PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_DBUS}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_DBUS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_DBUS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_DBUS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_DBUS_DEBUG}>)
    set_property(TARGET CONAN_PKG::dbus PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_DBUS}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_DBUS_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_DBUS_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_DBUS_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_DBUS_DEBUG}>)
    set_property(TARGET CONAN_PKG::dbus PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_DBUS_LIST} ${CONAN_CXX_FLAGS_DBUS_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_DBUS_RELEASE_LIST} ${CONAN_CXX_FLAGS_DBUS_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_DBUS_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_DBUS_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_DBUS_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_DBUS_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_DBUS_DEBUG_LIST}  ${CONAN_CXX_FLAGS_DBUS_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBICONV} ${CONAN_FRAMEWORKS_FOUND_LIBICONV} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBICONV}" "${CONAN_LIB_DIRS_LIBICONV}"
                                  CONAN_PACKAGE_TARGETS_LIBICONV "${_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES}"
                                  "" libiconv)
    set(_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBICONV_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBICONV_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBICONV_DEBUG}" "${CONAN_LIB_DIRS_LIBICONV_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBICONV_DEBUG "${_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_DEBUG}"
                                  "debug" libiconv)
    set(_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBICONV_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBICONV_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBICONV_RELEASE}" "${CONAN_LIB_DIRS_LIBICONV_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBICONV_RELEASE "${_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_RELEASE}"
                                  "release" libiconv)
    set(_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBICONV_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBICONV_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBICONV_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBICONV_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBICONV_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libiconv)
    set(_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBICONV_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBICONV_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBICONV_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBICONV_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBICONV_MINSIZEREL "${_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libiconv)

    add_library(CONAN_PKG::libiconv INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libiconv PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBICONV} ${_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBICONV_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBICONV_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBICONV_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBICONV_RELEASE} ${_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBICONV_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBICONV_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBICONV_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBICONV_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBICONV_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBICONV_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBICONV_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBICONV_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBICONV_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBICONV_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBICONV_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBICONV_DEBUG} ${_CONAN_PKG_LIBS_LIBICONV_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBICONV_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBICONV_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBICONV_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libiconv PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBICONV}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBICONV_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBICONV_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBICONV_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBICONV_DEBUG}>)
    set_property(TARGET CONAN_PKG::libiconv PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBICONV}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBICONV_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBICONV_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBICONV_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBICONV_DEBUG}>)
    set_property(TARGET CONAN_PKG::libiconv PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBICONV_LIST} ${CONAN_CXX_FLAGS_LIBICONV_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBICONV_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBICONV_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBICONV_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBICONV_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBICONV_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBICONV_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBICONV_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBICONV_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES "${CONAN_SYSTEM_LIBS_FREETYPE} ${CONAN_FRAMEWORKS_FOUND_FREETYPE} CONAN_PKG::libpng CONAN_PKG::zlib CONAN_PKG::bzip2 CONAN_PKG::brotli")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES "${_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FREETYPE}" "${CONAN_LIB_DIRS_FREETYPE}"
                                  CONAN_PACKAGE_TARGETS_FREETYPE "${_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES}"
                                  "" freetype)
    set(_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_FREETYPE_DEBUG} ${CONAN_FRAMEWORKS_FOUND_FREETYPE_DEBUG} CONAN_PKG::libpng CONAN_PKG::zlib CONAN_PKG::bzip2 CONAN_PKG::brotli")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FREETYPE_DEBUG}" "${CONAN_LIB_DIRS_FREETYPE_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_FREETYPE_DEBUG "${_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_DEBUG}"
                                  "debug" freetype)
    set(_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_FREETYPE_RELEASE} ${CONAN_FRAMEWORKS_FOUND_FREETYPE_RELEASE} CONAN_PKG::libpng CONAN_PKG::zlib CONAN_PKG::bzip2 CONAN_PKG::brotli")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FREETYPE_RELEASE}" "${CONAN_LIB_DIRS_FREETYPE_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_FREETYPE_RELEASE "${_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_RELEASE}"
                                  "release" freetype)
    set(_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_FREETYPE_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_FREETYPE_RELWITHDEBINFO} CONAN_PKG::libpng CONAN_PKG::zlib CONAN_PKG::bzip2 CONAN_PKG::brotli")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FREETYPE_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_FREETYPE_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_FREETYPE_RELWITHDEBINFO "${_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" freetype)
    set(_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_FREETYPE_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_FREETYPE_MINSIZEREL} CONAN_PKG::libpng CONAN_PKG::zlib CONAN_PKG::bzip2 CONAN_PKG::brotli")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_FREETYPE_MINSIZEREL}" "${CONAN_LIB_DIRS_FREETYPE_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_FREETYPE_MINSIZEREL "${_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" freetype)

    add_library(CONAN_PKG::freetype INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::freetype PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_FREETYPE} ${_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREETYPE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREETYPE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FREETYPE_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_FREETYPE_RELEASE} ${_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREETYPE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREETYPE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FREETYPE_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_FREETYPE_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREETYPE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREETYPE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FREETYPE_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_FREETYPE_MINSIZEREL} ${_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREETYPE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREETYPE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FREETYPE_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_FREETYPE_DEBUG} ${_CONAN_PKG_LIBS_FREETYPE_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREETYPE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_FREETYPE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_FREETYPE_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::freetype PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_FREETYPE}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_FREETYPE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_FREETYPE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_FREETYPE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_FREETYPE_DEBUG}>)
    set_property(TARGET CONAN_PKG::freetype PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_FREETYPE}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_FREETYPE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_FREETYPE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_FREETYPE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_FREETYPE_DEBUG}>)
    set_property(TARGET CONAN_PKG::freetype PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_FREETYPE_LIST} ${CONAN_CXX_FLAGS_FREETYPE_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_FREETYPE_RELEASE_LIST} ${CONAN_CXX_FLAGS_FREETYPE_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_FREETYPE_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_FREETYPE_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_FREETYPE_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_FREETYPE_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_FREETYPE_DEBUG_LIST}  ${CONAN_CXX_FLAGS_FREETYPE_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBFFI} ${CONAN_FRAMEWORKS_FOUND_LIBFFI} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBFFI}" "${CONAN_LIB_DIRS_LIBFFI}"
                                  CONAN_PACKAGE_TARGETS_LIBFFI "${_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES}"
                                  "" libffi)
    set(_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBFFI_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBFFI_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBFFI_DEBUG}" "${CONAN_LIB_DIRS_LIBFFI_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBFFI_DEBUG "${_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_DEBUG}"
                                  "debug" libffi)
    set(_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBFFI_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBFFI_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBFFI_RELEASE}" "${CONAN_LIB_DIRS_LIBFFI_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBFFI_RELEASE "${_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_RELEASE}"
                                  "release" libffi)
    set(_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBFFI_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBFFI_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBFFI_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBFFI_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBFFI_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libffi)
    set(_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBFFI_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBFFI_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBFFI_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBFFI_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBFFI_MINSIZEREL "${_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libffi)

    add_library(CONAN_PKG::libffi INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libffi PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBFFI} ${_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBFFI_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBFFI_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBFFI_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBFFI_RELEASE} ${_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBFFI_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBFFI_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBFFI_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBFFI_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBFFI_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBFFI_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBFFI_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBFFI_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBFFI_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBFFI_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBFFI_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBFFI_DEBUG} ${_CONAN_PKG_LIBS_LIBFFI_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBFFI_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBFFI_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBFFI_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libffi PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBFFI}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBFFI_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBFFI_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBFFI_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBFFI_DEBUG}>)
    set_property(TARGET CONAN_PKG::libffi PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBFFI}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBFFI_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBFFI_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBFFI_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBFFI_DEBUG}>)
    set_property(TARGET CONAN_PKG::libffi PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBFFI_LIST} ${CONAN_CXX_FLAGS_LIBFFI_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBFFI_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBFFI_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBFFI_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBFFI_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBFFI_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBFFI_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBFFI_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBFFI_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_PCRE_DEPENDENCIES "${CONAN_SYSTEM_LIBS_PCRE} ${CONAN_FRAMEWORKS_FOUND_PCRE} CONAN_PKG::bzip2 CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PCRE_DEPENDENCIES "${_CONAN_PKG_LIBS_PCRE_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PCRE}" "${CONAN_LIB_DIRS_PCRE}"
                                  CONAN_PACKAGE_TARGETS_PCRE "${_CONAN_PKG_LIBS_PCRE_DEPENDENCIES}"
                                  "" pcre)
    set(_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_PCRE_DEBUG} ${CONAN_FRAMEWORKS_FOUND_PCRE_DEBUG} CONAN_PKG::bzip2 CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PCRE_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PCRE_DEBUG}" "${CONAN_LIB_DIRS_PCRE_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_PCRE_DEBUG "${_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_DEBUG}"
                                  "debug" pcre)
    set(_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_PCRE_RELEASE} ${CONAN_FRAMEWORKS_FOUND_PCRE_RELEASE} CONAN_PKG::bzip2 CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PCRE_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PCRE_RELEASE}" "${CONAN_LIB_DIRS_PCRE_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_PCRE_RELEASE "${_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_RELEASE}"
                                  "release" pcre)
    set(_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_PCRE_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_PCRE_RELWITHDEBINFO} CONAN_PKG::bzip2 CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PCRE_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PCRE_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_PCRE_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_PCRE_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" pcre)
    set(_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_PCRE_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_PCRE_MINSIZEREL} CONAN_PKG::bzip2 CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PCRE_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PCRE_MINSIZEREL}" "${CONAN_LIB_DIRS_PCRE_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_PCRE_MINSIZEREL "${_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" pcre)

    add_library(CONAN_PKG::pcre INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::pcre PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_PCRE} ${_CONAN_PKG_LIBS_PCRE_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PCRE_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_PCRE_RELEASE} ${_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PCRE_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_PCRE_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PCRE_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_PCRE_MINSIZEREL} ${_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PCRE_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_PCRE_DEBUG} ${_CONAN_PKG_LIBS_PCRE_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PCRE_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::pcre PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_PCRE}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_PCRE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_PCRE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_PCRE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_PCRE_DEBUG}>)
    set_property(TARGET CONAN_PKG::pcre PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_PCRE}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_PCRE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_PCRE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_PCRE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_PCRE_DEBUG}>)
    set_property(TARGET CONAN_PKG::pcre PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_PCRE_LIST} ${CONAN_CXX_FLAGS_PCRE_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_PCRE_RELEASE_LIST} ${CONAN_CXX_FLAGS_PCRE_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_PCRE_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_PCRE_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_PCRE_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_PCRE_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_PCRE_DEBUG_LIST}  ${CONAN_CXX_FLAGS_PCRE_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBELF} ${CONAN_FRAMEWORKS_FOUND_LIBELF} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBELF_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBELF}" "${CONAN_LIB_DIRS_LIBELF}"
                                  CONAN_PACKAGE_TARGETS_LIBELF "${_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES}"
                                  "" libelf)
    set(_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBELF_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBELF_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBELF_DEBUG}" "${CONAN_LIB_DIRS_LIBELF_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBELF_DEBUG "${_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_DEBUG}"
                                  "debug" libelf)
    set(_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBELF_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBELF_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBELF_RELEASE}" "${CONAN_LIB_DIRS_LIBELF_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBELF_RELEASE "${_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_RELEASE}"
                                  "release" libelf)
    set(_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBELF_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBELF_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBELF_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBELF_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBELF_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libelf)
    set(_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBELF_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBELF_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBELF_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBELF_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBELF_MINSIZEREL "${_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libelf)

    add_library(CONAN_PKG::libelf INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libelf PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBELF} ${_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBELF_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBELF_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBELF_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBELF_RELEASE} ${_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBELF_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBELF_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBELF_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBELF_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBELF_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBELF_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBELF_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBELF_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBELF_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBELF_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBELF_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBELF_DEBUG} ${_CONAN_PKG_LIBS_LIBELF_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBELF_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBELF_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBELF_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libelf PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBELF}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBELF_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBELF_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBELF_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBELF_DEBUG}>)
    set_property(TARGET CONAN_PKG::libelf PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBELF}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBELF_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBELF_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBELF_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBELF_DEBUG}>)
    set_property(TARGET CONAN_PKG::libelf PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBELF_LIST} ${CONAN_CXX_FLAGS_LIBELF_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBELF_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBELF_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBELF_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBELF_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBELF_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBELF_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBELF_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBELF_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBMOUNT} ${CONAN_FRAMEWORKS_FOUND_LIBMOUNT} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBMOUNT}" "${CONAN_LIB_DIRS_LIBMOUNT}"
                                  CONAN_PACKAGE_TARGETS_LIBMOUNT "${_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES}"
                                  "" libmount)
    set(_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBMOUNT_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBMOUNT_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBMOUNT_DEBUG}" "${CONAN_LIB_DIRS_LIBMOUNT_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBMOUNT_DEBUG "${_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_DEBUG}"
                                  "debug" libmount)
    set(_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBMOUNT_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBMOUNT_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBMOUNT_RELEASE}" "${CONAN_LIB_DIRS_LIBMOUNT_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBMOUNT_RELEASE "${_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_RELEASE}"
                                  "release" libmount)
    set(_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBMOUNT_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBMOUNT_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBMOUNT_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBMOUNT_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBMOUNT_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libmount)
    set(_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBMOUNT_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBMOUNT_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBMOUNT_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBMOUNT_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBMOUNT_MINSIZEREL "${_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libmount)

    add_library(CONAN_PKG::libmount INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libmount PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBMOUNT} ${_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBMOUNT_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBMOUNT_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBMOUNT_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBMOUNT_RELEASE} ${_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBMOUNT_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBMOUNT_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBMOUNT_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBMOUNT_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBMOUNT_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBMOUNT_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBMOUNT_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBMOUNT_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBMOUNT_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBMOUNT_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBMOUNT_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBMOUNT_DEBUG} ${_CONAN_PKG_LIBS_LIBMOUNT_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBMOUNT_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBMOUNT_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBMOUNT_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libmount PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBMOUNT}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBMOUNT_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBMOUNT_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBMOUNT_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBMOUNT_DEBUG}>)
    set_property(TARGET CONAN_PKG::libmount PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBMOUNT}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBMOUNT_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBMOUNT_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBMOUNT_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBMOUNT_DEBUG}>)
    set_property(TARGET CONAN_PKG::libmount PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBMOUNT_LIST} ${CONAN_CXX_FLAGS_LIBMOUNT_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBMOUNT_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBMOUNT_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBMOUNT_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBMOUNT_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBMOUNT_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBMOUNT_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBMOUNT_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBMOUNT_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBSELINUX} ${CONAN_FRAMEWORKS_FOUND_LIBSELINUX} CONAN_PKG::pcre2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBSELINUX}" "${CONAN_LIB_DIRS_LIBSELINUX}"
                                  CONAN_PACKAGE_TARGETS_LIBSELINUX "${_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES}"
                                  "" libselinux)
    set(_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBSELINUX_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBSELINUX_DEBUG} CONAN_PKG::pcre2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBSELINUX_DEBUG}" "${CONAN_LIB_DIRS_LIBSELINUX_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBSELINUX_DEBUG "${_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_DEBUG}"
                                  "debug" libselinux)
    set(_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBSELINUX_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBSELINUX_RELEASE} CONAN_PKG::pcre2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBSELINUX_RELEASE}" "${CONAN_LIB_DIRS_LIBSELINUX_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBSELINUX_RELEASE "${_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_RELEASE}"
                                  "release" libselinux)
    set(_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBSELINUX_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBSELINUX_RELWITHDEBINFO} CONAN_PKG::pcre2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBSELINUX_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBSELINUX_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBSELINUX_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libselinux)
    set(_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBSELINUX_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBSELINUX_MINSIZEREL} CONAN_PKG::pcre2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBSELINUX_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBSELINUX_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBSELINUX_MINSIZEREL "${_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libselinux)

    add_library(CONAN_PKG::libselinux INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libselinux PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBSELINUX} ${_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSELINUX_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSELINUX_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBSELINUX_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBSELINUX_RELEASE} ${_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSELINUX_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSELINUX_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBSELINUX_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBSELINUX_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSELINUX_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSELINUX_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBSELINUX_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBSELINUX_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSELINUX_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSELINUX_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBSELINUX_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBSELINUX_DEBUG} ${_CONAN_PKG_LIBS_LIBSELINUX_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSELINUX_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBSELINUX_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBSELINUX_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libselinux PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBSELINUX}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBSELINUX_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBSELINUX_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBSELINUX_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBSELINUX_DEBUG}>)
    set_property(TARGET CONAN_PKG::libselinux PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBSELINUX}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBSELINUX_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBSELINUX_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBSELINUX_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBSELINUX_DEBUG}>)
    set_property(TARGET CONAN_PKG::libselinux PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBSELINUX_LIST} ${CONAN_CXX_FLAGS_LIBSELINUX_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBSELINUX_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBSELINUX_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBSELINUX_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBSELINUX_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBSELINUX_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBSELINUX_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBSELINUX_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBSELINUX_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES "${CONAN_SYSTEM_LIBS_EXPAT} ${CONAN_FRAMEWORKS_FOUND_EXPAT} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EXPAT_DEPENDENCIES "${_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EXPAT}" "${CONAN_LIB_DIRS_EXPAT}"
                                  CONAN_PACKAGE_TARGETS_EXPAT "${_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES}"
                                  "" expat)
    set(_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_EXPAT_DEBUG} ${CONAN_FRAMEWORKS_FOUND_EXPAT_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EXPAT_DEBUG}" "${CONAN_LIB_DIRS_EXPAT_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_EXPAT_DEBUG "${_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_DEBUG}"
                                  "debug" expat)
    set(_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_EXPAT_RELEASE} ${CONAN_FRAMEWORKS_FOUND_EXPAT_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EXPAT_RELEASE}" "${CONAN_LIB_DIRS_EXPAT_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_EXPAT_RELEASE "${_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_RELEASE}"
                                  "release" expat)
    set(_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_EXPAT_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_EXPAT_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EXPAT_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_EXPAT_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_EXPAT_RELWITHDEBINFO "${_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" expat)
    set(_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_EXPAT_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_EXPAT_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_EXPAT_MINSIZEREL}" "${CONAN_LIB_DIRS_EXPAT_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_EXPAT_MINSIZEREL "${_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" expat)

    add_library(CONAN_PKG::expat INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::expat PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_EXPAT} ${_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EXPAT_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EXPAT_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_EXPAT_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_EXPAT_RELEASE} ${_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EXPAT_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EXPAT_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_EXPAT_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_EXPAT_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EXPAT_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EXPAT_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_EXPAT_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_EXPAT_MINSIZEREL} ${_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EXPAT_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EXPAT_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_EXPAT_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_EXPAT_DEBUG} ${_CONAN_PKG_LIBS_EXPAT_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EXPAT_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_EXPAT_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_EXPAT_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::expat PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_EXPAT}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_EXPAT_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_EXPAT_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_EXPAT_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_EXPAT_DEBUG}>)
    set_property(TARGET CONAN_PKG::expat PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_EXPAT}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_EXPAT_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_EXPAT_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_EXPAT_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_EXPAT_DEBUG}>)
    set_property(TARGET CONAN_PKG::expat PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_EXPAT_LIST} ${CONAN_CXX_FLAGS_EXPAT_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_EXPAT_RELEASE_LIST} ${CONAN_CXX_FLAGS_EXPAT_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_EXPAT_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_EXPAT_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_EXPAT_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_EXPAT_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_EXPAT_DEBUG_LIST}  ${CONAN_CXX_FLAGS_EXPAT_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBUUID} ${CONAN_FRAMEWORKS_FOUND_LIBUUID} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBUUID}" "${CONAN_LIB_DIRS_LIBUUID}"
                                  CONAN_PACKAGE_TARGETS_LIBUUID "${_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES}"
                                  "" libuuid)
    set(_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBUUID_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBUUID_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBUUID_DEBUG}" "${CONAN_LIB_DIRS_LIBUUID_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBUUID_DEBUG "${_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_DEBUG}"
                                  "debug" libuuid)
    set(_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBUUID_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBUUID_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBUUID_RELEASE}" "${CONAN_LIB_DIRS_LIBUUID_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBUUID_RELEASE "${_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_RELEASE}"
                                  "release" libuuid)
    set(_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBUUID_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBUUID_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBUUID_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBUUID_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBUUID_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libuuid)
    set(_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBUUID_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBUUID_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBUUID_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBUUID_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBUUID_MINSIZEREL "${_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libuuid)

    add_library(CONAN_PKG::libuuid INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libuuid PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBUUID} ${_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBUUID_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBUUID_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBUUID_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBUUID_RELEASE} ${_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBUUID_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBUUID_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBUUID_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBUUID_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBUUID_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBUUID_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBUUID_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBUUID_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBUUID_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBUUID_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBUUID_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBUUID_DEBUG} ${_CONAN_PKG_LIBS_LIBUUID_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBUUID_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBUUID_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBUUID_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libuuid PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBUUID}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBUUID_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBUUID_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBUUID_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBUUID_DEBUG}>)
    set_property(TARGET CONAN_PKG::libuuid PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBUUID}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBUUID_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBUUID_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBUUID_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBUUID_DEBUG}>)
    set_property(TARGET CONAN_PKG::libuuid PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBUUID_LIST} ${CONAN_CXX_FLAGS_LIBUUID_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBUUID_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBUUID_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBUUID_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBUUID_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBUUID_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBUUID_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBUUID_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBUUID_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES "${CONAN_SYSTEM_LIBS_LIBPNG} ${CONAN_FRAMEWORKS_FOUND_LIBPNG} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBPNG}" "${CONAN_LIB_DIRS_LIBPNG}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES}"
                                  "" libpng)
    set(_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_LIBPNG_DEBUG} ${CONAN_FRAMEWORKS_FOUND_LIBPNG_DEBUG} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBPNG_DEBUG}" "${CONAN_LIB_DIRS_LIBPNG_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_DEBUG "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_DEBUG}"
                                  "debug" libpng)
    set(_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_LIBPNG_RELEASE} ${CONAN_FRAMEWORKS_FOUND_LIBPNG_RELEASE} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBPNG_RELEASE}" "${CONAN_LIB_DIRS_LIBPNG_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_RELEASE "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELEASE}"
                                  "release" libpng)
    set(_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBPNG_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_LIBPNG_RELWITHDEBINFO} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBPNG_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBPNG_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_RELWITHDEBINFO "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" libpng)
    set(_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBPNG_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_LIBPNG_MINSIZEREL} CONAN_PKG::zlib")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_LIBPNG_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBPNG_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_MINSIZEREL "${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" libpng)

    add_library(CONAN_PKG::libpng INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBPNG} ${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBPNG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBPNG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBPNG_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBPNG_RELEASE} ${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBPNG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBPNG_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBPNG_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBPNG_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBPNG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBPNG_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBPNG_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBPNG_MINSIZEREL} ${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBPNG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBPNG_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBPNG_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBPNG_DEBUG} ${_CONAN_PKG_LIBS_LIBPNG_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBPNG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_LIBPNG_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_LIBPNG_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBPNG}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBPNG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBPNG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBPNG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBPNG_DEBUG}>)
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBPNG}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_DEBUG}>)
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBPNG_LIST} ${CONAN_CXX_FLAGS_LIBPNG_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBPNG_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBPNG_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBPNG_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBPNG_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBPNG_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBPNG_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBPNG_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBPNG_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES "${CONAN_SYSTEM_LIBS_BROTLI} ${CONAN_FRAMEWORKS_FOUND_BROTLI} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BROTLI_DEPENDENCIES "${_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BROTLI}" "${CONAN_LIB_DIRS_BROTLI}"
                                  CONAN_PACKAGE_TARGETS_BROTLI "${_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES}"
                                  "" brotli)
    set(_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_BROTLI_DEBUG} ${CONAN_FRAMEWORKS_FOUND_BROTLI_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BROTLI_DEBUG}" "${CONAN_LIB_DIRS_BROTLI_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_BROTLI_DEBUG "${_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_DEBUG}"
                                  "debug" brotli)
    set(_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_BROTLI_RELEASE} ${CONAN_FRAMEWORKS_FOUND_BROTLI_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BROTLI_RELEASE}" "${CONAN_LIB_DIRS_BROTLI_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_BROTLI_RELEASE "${_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_RELEASE}"
                                  "release" brotli)
    set(_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_BROTLI_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_BROTLI_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BROTLI_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_BROTLI_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_BROTLI_RELWITHDEBINFO "${_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" brotli)
    set(_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_BROTLI_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_BROTLI_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BROTLI_MINSIZEREL}" "${CONAN_LIB_DIRS_BROTLI_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_BROTLI_MINSIZEREL "${_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" brotli)

    add_library(CONAN_PKG::brotli INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::brotli PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_BROTLI} ${_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BROTLI_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BROTLI_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_BROTLI_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_BROTLI_RELEASE} ${_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BROTLI_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BROTLI_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_BROTLI_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_BROTLI_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BROTLI_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BROTLI_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_BROTLI_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_BROTLI_MINSIZEREL} ${_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BROTLI_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BROTLI_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_BROTLI_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_BROTLI_DEBUG} ${_CONAN_PKG_LIBS_BROTLI_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BROTLI_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BROTLI_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_BROTLI_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::brotli PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_BROTLI}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_BROTLI_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_BROTLI_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_BROTLI_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_BROTLI_DEBUG}>)
    set_property(TARGET CONAN_PKG::brotli PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_BROTLI}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_BROTLI_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_BROTLI_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_BROTLI_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_BROTLI_DEBUG}>)
    set_property(TARGET CONAN_PKG::brotli PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_BROTLI_LIST} ${CONAN_CXX_FLAGS_BROTLI_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_BROTLI_RELEASE_LIST} ${CONAN_CXX_FLAGS_BROTLI_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_BROTLI_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_BROTLI_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_BROTLI_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_BROTLI_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_BROTLI_DEBUG_LIST}  ${CONAN_CXX_FLAGS_BROTLI_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES "${CONAN_SYSTEM_LIBS_PCRE2} ${CONAN_FRAMEWORKS_FOUND_PCRE2} CONAN_PKG::zlib CONAN_PKG::bzip2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PCRE2_DEPENDENCIES "${_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PCRE2}" "${CONAN_LIB_DIRS_PCRE2}"
                                  CONAN_PACKAGE_TARGETS_PCRE2 "${_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES}"
                                  "" pcre2)
    set(_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_PCRE2_DEBUG} ${CONAN_FRAMEWORKS_FOUND_PCRE2_DEBUG} CONAN_PKG::zlib CONAN_PKG::bzip2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PCRE2_DEBUG}" "${CONAN_LIB_DIRS_PCRE2_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_PCRE2_DEBUG "${_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_DEBUG}"
                                  "debug" pcre2)
    set(_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_PCRE2_RELEASE} ${CONAN_FRAMEWORKS_FOUND_PCRE2_RELEASE} CONAN_PKG::zlib CONAN_PKG::bzip2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PCRE2_RELEASE}" "${CONAN_LIB_DIRS_PCRE2_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_PCRE2_RELEASE "${_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_RELEASE}"
                                  "release" pcre2)
    set(_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_PCRE2_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_PCRE2_RELWITHDEBINFO} CONAN_PKG::zlib CONAN_PKG::bzip2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PCRE2_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_PCRE2_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_PCRE2_RELWITHDEBINFO "${_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" pcre2)
    set(_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_PCRE2_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_PCRE2_MINSIZEREL} CONAN_PKG::zlib CONAN_PKG::bzip2")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_PCRE2_MINSIZEREL}" "${CONAN_LIB_DIRS_PCRE2_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_PCRE2_MINSIZEREL "${_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" pcre2)

    add_library(CONAN_PKG::pcre2 INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::pcre2 PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_PCRE2} ${_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE2_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE2_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PCRE2_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_PCRE2_RELEASE} ${_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE2_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE2_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PCRE2_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_PCRE2_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE2_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE2_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PCRE2_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_PCRE2_MINSIZEREL} ${_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE2_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE2_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PCRE2_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_PCRE2_DEBUG} ${_CONAN_PKG_LIBS_PCRE2_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE2_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_PCRE2_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_PCRE2_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::pcre2 PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_PCRE2}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_PCRE2_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_PCRE2_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_PCRE2_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_PCRE2_DEBUG}>)
    set_property(TARGET CONAN_PKG::pcre2 PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_PCRE2}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_PCRE2_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_PCRE2_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_PCRE2_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_PCRE2_DEBUG}>)
    set_property(TARGET CONAN_PKG::pcre2 PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_PCRE2_LIST} ${CONAN_CXX_FLAGS_PCRE2_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_PCRE2_RELEASE_LIST} ${CONAN_CXX_FLAGS_PCRE2_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_PCRE2_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_PCRE2_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_PCRE2_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_PCRE2_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_PCRE2_DEBUG_LIST}  ${CONAN_CXX_FLAGS_PCRE2_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES "${CONAN_SYSTEM_LIBS_ZLIB} ${CONAN_FRAMEWORKS_FOUND_ZLIB} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZLIB_DEPENDENCIES "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZLIB}" "${CONAN_LIB_DIRS_ZLIB}"
                                  CONAN_PACKAGE_TARGETS_ZLIB "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES}"
                                  "" zlib)
    set(_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_ZLIB_DEBUG} ${CONAN_FRAMEWORKS_FOUND_ZLIB_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZLIB_DEBUG}" "${CONAN_LIB_DIRS_ZLIB_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_DEBUG "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_DEBUG}"
                                  "debug" zlib)
    set(_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_ZLIB_RELEASE} ${CONAN_FRAMEWORKS_FOUND_ZLIB_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZLIB_RELEASE}" "${CONAN_LIB_DIRS_ZLIB_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_RELEASE "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELEASE}"
                                  "release" zlib)
    set(_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_ZLIB_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_ZLIB_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZLIB_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_ZLIB_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_RELWITHDEBINFO "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" zlib)
    set(_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_ZLIB_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_ZLIB_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_ZLIB_MINSIZEREL}" "${CONAN_LIB_DIRS_ZLIB_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_MINSIZEREL "${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" zlib)

    add_library(CONAN_PKG::zlib INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_ZLIB} ${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZLIB_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZLIB_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ZLIB_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_ZLIB_RELEASE} ${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZLIB_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZLIB_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ZLIB_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_ZLIB_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZLIB_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZLIB_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ZLIB_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_ZLIB_MINSIZEREL} ${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZLIB_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZLIB_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ZLIB_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_ZLIB_DEBUG} ${_CONAN_PKG_LIBS_ZLIB_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZLIB_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_ZLIB_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_ZLIB_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_ZLIB}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_ZLIB_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_ZLIB_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_ZLIB_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_ZLIB_DEBUG}>)
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_ZLIB}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_ZLIB_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_ZLIB_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_ZLIB_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_ZLIB_DEBUG}>)
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_ZLIB_LIST} ${CONAN_CXX_FLAGS_ZLIB_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_ZLIB_RELEASE_LIST} ${CONAN_CXX_FLAGS_ZLIB_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_ZLIB_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_ZLIB_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_ZLIB_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_ZLIB_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_ZLIB_DEBUG_LIST}  ${CONAN_CXX_FLAGS_ZLIB_DEBUG_LIST}>)


    set(_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES "${CONAN_SYSTEM_LIBS_BZIP2} ${CONAN_FRAMEWORKS_FOUND_BZIP2} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BZIP2_DEPENDENCIES "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BZIP2}" "${CONAN_LIB_DIRS_BZIP2}"
                                  CONAN_PACKAGE_TARGETS_BZIP2 "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES}"
                                  "" bzip2)
    set(_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_DEBUG "${CONAN_SYSTEM_LIBS_BZIP2_DEBUG} ${CONAN_FRAMEWORKS_FOUND_BZIP2_DEBUG} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_DEBUG "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_DEBUG}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BZIP2_DEBUG}" "${CONAN_LIB_DIRS_BZIP2_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_BZIP2_DEBUG "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_DEBUG}"
                                  "debug" bzip2)
    set(_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELEASE "${CONAN_SYSTEM_LIBS_BZIP2_RELEASE} ${CONAN_FRAMEWORKS_FOUND_BZIP2_RELEASE} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELEASE "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELEASE}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BZIP2_RELEASE}" "${CONAN_LIB_DIRS_BZIP2_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_BZIP2_RELEASE "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELEASE}"
                                  "release" bzip2)
    set(_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_BZIP2_RELWITHDEBINFO} ${CONAN_FRAMEWORKS_FOUND_BZIP2_RELWITHDEBINFO} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELWITHDEBINFO "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELWITHDEBINFO}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BZIP2_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_BZIP2_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_BZIP2_RELWITHDEBINFO "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELWITHDEBINFO}"
                                  "relwithdebinfo" bzip2)
    set(_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_MINSIZEREL "${CONAN_SYSTEM_LIBS_BZIP2_MINSIZEREL} ${CONAN_FRAMEWORKS_FOUND_BZIP2_MINSIZEREL} ")
    string(REPLACE " " ";" _CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_MINSIZEREL "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_MINSIZEREL}")
    conan_package_library_targets("${CONAN_PKG_LIBS_BZIP2_MINSIZEREL}" "${CONAN_LIB_DIRS_BZIP2_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_BZIP2_MINSIZEREL "${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_MINSIZEREL}"
                                  "minsizerel" bzip2)

    add_library(CONAN_PKG::bzip2 INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::bzip2 PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_BZIP2} ${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BZIP2_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BZIP2_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_BZIP2_LIST}>

                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_BZIP2_RELEASE} ${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELEASE}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BZIP2_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BZIP2_RELEASE_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_BZIP2_RELEASE_LIST}>>

                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_BZIP2_RELWITHDEBINFO} ${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_RELWITHDEBINFO}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BZIP2_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BZIP2_RELWITHDEBINFO_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_BZIP2_RELWITHDEBINFO_LIST}>>

                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_BZIP2_MINSIZEREL} ${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_MINSIZEREL}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BZIP2_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BZIP2_MINSIZEREL_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_BZIP2_MINSIZEREL_LIST}>>

                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_BZIP2_DEBUG} ${_CONAN_PKG_LIBS_BZIP2_DEPENDENCIES_DEBUG}
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BZIP2_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CONAN_SHARED_LINKER_FLAGS_BZIP2_DEBUG_LIST}>
                                                                 $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CONAN_EXE_LINKER_FLAGS_BZIP2_DEBUG_LIST}>>)
    set_property(TARGET CONAN_PKG::bzip2 PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_BZIP2}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_BZIP2_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_BZIP2_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_BZIP2_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_BZIP2_DEBUG}>)
    set_property(TARGET CONAN_PKG::bzip2 PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_BZIP2}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_BZIP2_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_BZIP2_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_BZIP2_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_BZIP2_DEBUG}>)
    set_property(TARGET CONAN_PKG::bzip2 PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_BZIP2_LIST} ${CONAN_CXX_FLAGS_BZIP2_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_BZIP2_RELEASE_LIST} ${CONAN_CXX_FLAGS_BZIP2_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_BZIP2_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_BZIP2_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_BZIP2_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_BZIP2_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_BZIP2_DEBUG_LIST}  ${CONAN_CXX_FLAGS_BZIP2_DEBUG_LIST}>)

    set(CONAN_TARGETS CONAN_PKG::allegro5 CONAN_PKG::glm CONAN_PKG::asio CONAN_PKG::nlohmann_json CONAN_PKG::spdlog CONAN_PKG::implot CONAN_PKG::serial CONAN_PKG::freeimage CONAN_PKG::minimp3 CONAN_PKG::openal CONAN_PKG::physfs CONAN_PKG::opusfile CONAN_PKG::theora CONAN_PKG::gtk CONAN_PKG::glu CONAN_PKG::pulseaudio CONAN_PKG::fmt CONAN_PKG::imgui CONAN_PKG::openjpeg CONAN_PKG::openexr CONAN_PKG::libraw CONAN_PKG::jxrlib CONAN_PKG::libalsa CONAN_PKG::openssl CONAN_PKG::gdk-pixbuf CONAN_PKG::at-spi2-atk CONAN_PKG::libepoxy CONAN_PKG::pango CONAN_PKG::libsndfile CONAN_PKG::libcap CONAN_PKG::lcms CONAN_PKG::jasper CONAN_PKG::libtiff CONAN_PKG::flac CONAN_PKG::vorbis CONAN_PKG::opus CONAN_PKG::cairo CONAN_PKG::at-spi2-core CONAN_PKG::atk CONAN_PKG::libxml2 CONAN_PKG::harfbuzz CONAN_PKG::fribidi CONAN_PKG::libjpeg CONAN_PKG::libwebp CONAN_PKG::libdeflate CONAN_PKG::xz_utils CONAN_PKG::jbig CONAN_PKG::zstd CONAN_PKG::ogg CONAN_PKG::opengl CONAN_PKG::xorg CONAN_PKG::glib CONAN_PKG::pixman CONAN_PKG::lzo CONAN_PKG::fontconfig CONAN_PKG::egl CONAN_PKG::dbus CONAN_PKG::libiconv CONAN_PKG::freetype CONAN_PKG::libffi CONAN_PKG::pcre CONAN_PKG::libelf CONAN_PKG::libmount CONAN_PKG::libselinux CONAN_PKG::expat CONAN_PKG::libuuid CONAN_PKG::libpng CONAN_PKG::brotli CONAN_PKG::pcre2 CONAN_PKG::zlib CONAN_PKG::bzip2)

endmacro()


macro(conan_basic_setup)
    set(options TARGETS NO_OUTPUT_DIRS SKIP_RPATH KEEP_RPATHS SKIP_STD SKIP_FPIC)
    cmake_parse_arguments(ARGUMENTS "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN} )

    if(CONAN_EXPORTED)
        conan_message(STATUS "Conan: called by CMake conan helper")
    endif()

    if(CONAN_IN_LOCAL_CACHE)
        conan_message(STATUS "Conan: called inside local cache")
    endif()

    if(NOT ARGUMENTS_NO_OUTPUT_DIRS)
        conan_message(STATUS "Conan: Adjusting output directories")
        conan_output_dirs_setup()
    endif()

    if(NOT ARGUMENTS_TARGETS)
        conan_message(STATUS "Conan: Using cmake global configuration")
        conan_global_flags()
    else()
        conan_message(STATUS "Conan: Using cmake targets configuration")
        conan_define_targets()
    endif()

    if(ARGUMENTS_SKIP_RPATH)
        # Change by "DEPRECATION" or "SEND_ERROR" when we are ready
        conan_message(WARNING "Conan: SKIP_RPATH is deprecated, it has been renamed to KEEP_RPATHS")
    endif()

    if(NOT ARGUMENTS_SKIP_RPATH AND NOT ARGUMENTS_KEEP_RPATHS)
        # Parameter has renamed, but we keep the compatibility with old SKIP_RPATH
        conan_set_rpath()
    endif()

    if(NOT ARGUMENTS_SKIP_STD)
        conan_set_std()
    endif()

    if(NOT ARGUMENTS_SKIP_FPIC)
        conan_set_fpic()
    endif()

    conan_check_compiler()
    conan_set_libcxx()
    conan_set_vs_runtime()
    conan_set_find_paths()
    conan_include_build_modules()
    conan_set_find_library_paths()
endmacro()


macro(conan_set_find_paths)
    # CMAKE_MODULE_PATH does not have Debug/Release config, but there are variables
    # CONAN_CMAKE_MODULE_PATH_DEBUG to be used by the consumer
    # CMake can find findXXX.cmake files in the root of packages
    set(CMAKE_MODULE_PATH ${CONAN_CMAKE_MODULE_PATH} ${CMAKE_MODULE_PATH})

    # Make find_package() to work
    set(CMAKE_PREFIX_PATH ${CONAN_CMAKE_MODULE_PATH} ${CMAKE_PREFIX_PATH})

    # Set the find root path (cross build)
    set(CMAKE_FIND_ROOT_PATH ${CONAN_CMAKE_FIND_ROOT_PATH} ${CMAKE_FIND_ROOT_PATH})
    if(CONAN_CMAKE_FIND_ROOT_PATH_MODE_PROGRAM)
        set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ${CONAN_CMAKE_FIND_ROOT_PATH_MODE_PROGRAM})
    endif()
    if(CONAN_CMAKE_FIND_ROOT_PATH_MODE_LIBRARY)
        set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ${CONAN_CMAKE_FIND_ROOT_PATH_MODE_LIBRARY})
    endif()
    if(CONAN_CMAKE_FIND_ROOT_PATH_MODE_INCLUDE)
        set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ${CONAN_CMAKE_FIND_ROOT_PATH_MODE_INCLUDE})
    endif()
endmacro()


macro(conan_set_find_library_paths)
    # CMAKE_INCLUDE_PATH, CMAKE_LIBRARY_PATH does not have Debug/Release config, but there are variables
    # CONAN_INCLUDE_DIRS_DEBUG/RELEASE CONAN_LIB_DIRS_DEBUG/RELEASE to be used by the consumer
    # For find_library
    set(CMAKE_INCLUDE_PATH ${CONAN_INCLUDE_DIRS} ${CMAKE_INCLUDE_PATH})
    set(CMAKE_LIBRARY_PATH ${CONAN_LIB_DIRS} ${CMAKE_LIBRARY_PATH})
endmacro()


macro(conan_set_vs_runtime)
    if(CONAN_LINK_RUNTIME)
        conan_get_policy(CMP0091 policy_0091)
        if(policy_0091 STREQUAL "NEW")
            if(CONAN_LINK_RUNTIME MATCHES "MTd")
                set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreadedDebug")
            elseif(CONAN_LINK_RUNTIME MATCHES "MDd")
                set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreadedDebugDLL")
            elseif(CONAN_LINK_RUNTIME MATCHES "MT")
                set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded")
            elseif(CONAN_LINK_RUNTIME MATCHES "MD")
                set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreadedDLL")
            endif()
        else()
            foreach(flag CMAKE_C_FLAGS_RELEASE CMAKE_CXX_FLAGS_RELEASE
                         CMAKE_C_FLAGS_RELWITHDEBINFO CMAKE_CXX_FLAGS_RELWITHDEBINFO
                         CMAKE_C_FLAGS_MINSIZEREL CMAKE_CXX_FLAGS_MINSIZEREL)
                if(DEFINED ${flag})
                    string(REPLACE "/MD" ${CONAN_LINK_RUNTIME} ${flag} "${${flag}}")
                endif()
            endforeach()
            foreach(flag CMAKE_C_FLAGS_DEBUG CMAKE_CXX_FLAGS_DEBUG)
                if(DEFINED ${flag})
                    string(REPLACE "/MDd" ${CONAN_LINK_RUNTIME} ${flag} "${${flag}}")
                endif()
            endforeach()
        endif()
    endif()
endmacro()


macro(conan_flags_setup)
    # Macro maintained for backwards compatibility
    conan_set_find_library_paths()
    conan_global_flags()
    conan_set_rpath()
    conan_set_vs_runtime()
    conan_set_libcxx()
endmacro()


function(conan_message MESSAGE_OUTPUT)
    if(NOT CONAN_CMAKE_SILENT_OUTPUT)
        message(${ARGV${0}})
    endif()
endfunction()


function(conan_get_policy policy_id policy)
    if(POLICY "${policy_id}")
        cmake_policy(GET "${policy_id}" _policy)
        set(${policy} "${_policy}" PARENT_SCOPE)
    else()
        set(${policy} "" PARENT_SCOPE)
    endif()
endfunction()


function(conan_find_libraries_abs_path libraries package_libdir libraries_abs_path)
    foreach(_LIBRARY_NAME ${libraries})
        find_library(CONAN_FOUND_LIBRARY NAME ${_LIBRARY_NAME} PATHS ${package_libdir}
                     NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
        if(CONAN_FOUND_LIBRARY)
            conan_message(STATUS "Library ${_LIBRARY_NAME} found ${CONAN_FOUND_LIBRARY}")
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${CONAN_FOUND_LIBRARY})
        else()
            conan_message(STATUS "Library ${_LIBRARY_NAME} not found in package, might be system one")
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${_LIBRARY_NAME})
        endif()
        unset(CONAN_FOUND_LIBRARY CACHE)
    endforeach()
    set(${libraries_abs_path} ${CONAN_FULLPATH_LIBS} PARENT_SCOPE)
endfunction()


function(conan_package_library_targets libraries package_libdir libraries_abs_path deps build_type package_name)
    unset(_CONAN_ACTUAL_TARGETS CACHE)
    unset(_CONAN_FOUND_SYSTEM_LIBS CACHE)
    foreach(_LIBRARY_NAME ${libraries})
        find_library(CONAN_FOUND_LIBRARY NAME ${_LIBRARY_NAME} PATHS ${package_libdir}
                     NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
        if(CONAN_FOUND_LIBRARY)
            conan_message(STATUS "Library ${_LIBRARY_NAME} found ${CONAN_FOUND_LIBRARY}")
            set(_LIB_NAME CONAN_LIB::${package_name}_${_LIBRARY_NAME}${build_type})
            add_library(${_LIB_NAME} UNKNOWN IMPORTED)
            set_target_properties(${_LIB_NAME} PROPERTIES IMPORTED_LOCATION ${CONAN_FOUND_LIBRARY})
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${_LIB_NAME})
            set(_CONAN_ACTUAL_TARGETS ${_CONAN_ACTUAL_TARGETS} ${_LIB_NAME})
        else()
            conan_message(STATUS "Library ${_LIBRARY_NAME} not found in package, might be system one")
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${_LIBRARY_NAME})
            set(_CONAN_FOUND_SYSTEM_LIBS "${_CONAN_FOUND_SYSTEM_LIBS};${_LIBRARY_NAME}")
        endif()
        unset(CONAN_FOUND_LIBRARY CACHE)
    endforeach()

    # Add all dependencies to all targets
    string(REPLACE " " ";" deps_list "${deps}")
    foreach(_CONAN_ACTUAL_TARGET ${_CONAN_ACTUAL_TARGETS})
        set_property(TARGET ${_CONAN_ACTUAL_TARGET} PROPERTY INTERFACE_LINK_LIBRARIES "${_CONAN_FOUND_SYSTEM_LIBS};${deps_list}")
    endforeach()

    set(${libraries_abs_path} ${CONAN_FULLPATH_LIBS} PARENT_SCOPE)
endfunction()


macro(conan_set_libcxx)
    if(DEFINED CONAN_LIBCXX)
        conan_message(STATUS "Conan: C++ stdlib: ${CONAN_LIBCXX}")
        if(CONAN_COMPILER STREQUAL "clang" OR CONAN_COMPILER STREQUAL "apple-clang")
            if(CONAN_LIBCXX STREQUAL "libstdc++" OR CONAN_LIBCXX STREQUAL "libstdc++11" )
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libstdc++")
            elseif(CONAN_LIBCXX STREQUAL "libc++")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
            endif()
        endif()
        if(CONAN_COMPILER STREQUAL "sun-cc")
            if(CONAN_LIBCXX STREQUAL "libCstd")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=Cstd")
            elseif(CONAN_LIBCXX STREQUAL "libstdcxx")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=stdcxx4")
            elseif(CONAN_LIBCXX STREQUAL "libstlport")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=stlport4")
            elseif(CONAN_LIBCXX STREQUAL "libstdc++")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=stdcpp")
            endif()
        endif()
        if(CONAN_LIBCXX STREQUAL "libstdc++11")
            add_definitions(-D_GLIBCXX_USE_CXX11_ABI=1)
        elseif(CONAN_LIBCXX STREQUAL "libstdc++")
            add_definitions(-D_GLIBCXX_USE_CXX11_ABI=0)
        endif()
    endif()
endmacro()


macro(conan_set_std)
    conan_message(STATUS "Conan: Adjusting language standard")
    # Do not warn "Manually-specified variables were not used by the project"
    set(ignorevar "${CONAN_STD_CXX_FLAG}${CONAN_CMAKE_CXX_STANDARD}${CONAN_CMAKE_CXX_EXTENSIONS}")
    if (CMAKE_VERSION VERSION_LESS "3.1" OR
        (CMAKE_VERSION VERSION_LESS "3.12" AND ("${CONAN_CMAKE_CXX_STANDARD}" STREQUAL "20" OR "${CONAN_CMAKE_CXX_STANDARD}" STREQUAL "gnu20")))
        if(CONAN_STD_CXX_FLAG)
            conan_message(STATUS "Conan setting CXX_FLAGS flags: ${CONAN_STD_CXX_FLAG}")
            set(CMAKE_CXX_FLAGS "${CONAN_STD_CXX_FLAG} ${CMAKE_CXX_FLAGS}")
        endif()
    else()
        if(CONAN_CMAKE_CXX_STANDARD)
            conan_message(STATUS "Conan setting CPP STANDARD: ${CONAN_CMAKE_CXX_STANDARD} WITH EXTENSIONS ${CONAN_CMAKE_CXX_EXTENSIONS}")
            set(CMAKE_CXX_STANDARD ${CONAN_CMAKE_CXX_STANDARD})
            set(CMAKE_CXX_EXTENSIONS ${CONAN_CMAKE_CXX_EXTENSIONS})
        endif()
    endif()
endmacro()


macro(conan_set_rpath)
    conan_message(STATUS "Conan: Adjusting default RPATHs Conan policies")
    if(APPLE)
        # https://cmake.org/Wiki/CMake_RPATH_handling
        # CONAN GUIDE: All generated libraries should have the id and dependencies to other
        # dylibs without path, just the name, EX:
        # libMyLib1.dylib:
        #     libMyLib1.dylib (compatibility version 0.0.0, current version 0.0.0)
        #     libMyLib0.dylib (compatibility version 0.0.0, current version 0.0.0)
        #     /usr/lib/libc++.1.dylib (compatibility version 1.0.0, current version 120.0.0)
        #     /usr/lib/libSystem.B.dylib (compatibility version 1.0.0, current version 1197.1.1)
        # AVOID RPATH FOR *.dylib, ALL LIBS BETWEEN THEM AND THE EXE
        # SHOULD BE ON THE LINKER RESOLVER PATH (./ IS ONE OF THEM)
        set(CMAKE_SKIP_RPATH 1 CACHE BOOL "rpaths" FORCE)
        # Policy CMP0068
        # We want the old behavior, in CMake >= 3.9 CMAKE_SKIP_RPATH won't affect the install_name in OSX
        set(CMAKE_INSTALL_NAME_DIR "")
    endif()
endmacro()


macro(conan_set_fpic)
    if(DEFINED CONAN_CMAKE_POSITION_INDEPENDENT_CODE)
        conan_message(STATUS "Conan: Adjusting fPIC flag (${CONAN_CMAKE_POSITION_INDEPENDENT_CODE})")
        set(CMAKE_POSITION_INDEPENDENT_CODE ${CONAN_CMAKE_POSITION_INDEPENDENT_CODE})
    endif()
endmacro()


macro(conan_output_dirs_setup)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})

    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})

    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
endmacro()


macro(conan_split_version VERSION_STRING MAJOR MINOR)
    #make a list from the version string
    string(REPLACE "." ";" VERSION_LIST "${VERSION_STRING}")

    #write output values
    list(LENGTH VERSION_LIST _version_len)
    list(GET VERSION_LIST 0 ${MAJOR})
    if(${_version_len} GREATER 1)
        list(GET VERSION_LIST 1 ${MINOR})
    endif()
endmacro()


macro(conan_error_compiler_version)
    message(FATAL_ERROR "Detected a mismatch for the compiler version between your conan profile settings and CMake: \n"
                        "Compiler version specified in your conan profile: ${CONAN_COMPILER_VERSION}\n"
                        "Compiler version detected in CMake: ${VERSION_MAJOR}.${VERSION_MINOR}\n"
                        "Please check your conan profile settings (conan profile show [default|your_profile_name])\n"
                        "P.S. You may set CONAN_DISABLE_CHECK_COMPILER CMake variable in order to disable this check."
           )
endmacro()

set(_CONAN_CURRENT_DIR ${CMAKE_CURRENT_LIST_DIR})

function(conan_get_compiler CONAN_INFO_COMPILER CONAN_INFO_COMPILER_VERSION)
    conan_message(STATUS "Current conanbuildinfo.cmake directory: " ${_CONAN_CURRENT_DIR})
    if(NOT EXISTS ${_CONAN_CURRENT_DIR}/conaninfo.txt)
        conan_message(STATUS "WARN: conaninfo.txt not found")
        return()
    endif()

    file (READ "${_CONAN_CURRENT_DIR}/conaninfo.txt" CONANINFO)

    # MATCHALL will match all, including the last one, which is the full_settings one
    string(REGEX MATCH "full_settings.*" _FULL_SETTINGS_MATCHED ${CONANINFO})
    string(REGEX MATCH "compiler=([-A-Za-z0-9_ ]+)" _MATCHED ${_FULL_SETTINGS_MATCHED})
    if(DEFINED CMAKE_MATCH_1)
        string(STRIP "${CMAKE_MATCH_1}" _CONAN_INFO_COMPILER)
        set(${CONAN_INFO_COMPILER} ${_CONAN_INFO_COMPILER} PARENT_SCOPE)
    endif()

    string(REGEX MATCH "compiler.version=([-A-Za-z0-9_.]+)" _MATCHED ${_FULL_SETTINGS_MATCHED})
    if(DEFINED CMAKE_MATCH_1)
        string(STRIP "${CMAKE_MATCH_1}" _CONAN_INFO_COMPILER_VERSION)
        set(${CONAN_INFO_COMPILER_VERSION} ${_CONAN_INFO_COMPILER_VERSION} PARENT_SCOPE)
    endif()
endfunction()


function(check_compiler_version)
    conan_split_version(${CMAKE_CXX_COMPILER_VERSION} VERSION_MAJOR VERSION_MINOR)
    if(DEFINED CONAN_SETTINGS_COMPILER_TOOLSET)
       conan_message(STATUS "Conan: Skipping compiler check: Declared 'compiler.toolset'")
       return()
    endif()
    if(CMAKE_CXX_COMPILER_ID MATCHES MSVC)
        # MSVC_VERSION is defined since 2.8.2 at least
        # https://cmake.org/cmake/help/v2.8.2/cmake.html#variable:MSVC_VERSION
        # https://cmake.org/cmake/help/v3.14/variable/MSVC_VERSION.html
        if(
            # 1930 = VS 17.0 (v143 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "17" AND NOT((MSVC_VERSION EQUAL 1930) OR (MSVC_VERSION GREATER 1930))) OR
            # 1920-1929 = VS 16.0 (v142 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "16" AND NOT((MSVC_VERSION GREATER 1919) AND (MSVC_VERSION LESS 1930))) OR
            # 1910-1919 = VS 15.0 (v141 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "15" AND NOT((MSVC_VERSION GREATER 1909) AND (MSVC_VERSION LESS 1920))) OR
            # 1900      = VS 14.0 (v140 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "14" AND NOT(MSVC_VERSION EQUAL 1900)) OR
            # 1800      = VS 12.0 (v120 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "12" AND NOT VERSION_MAJOR STREQUAL "18") OR
            # 1700      = VS 11.0 (v110 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "11" AND NOT VERSION_MAJOR STREQUAL "17") OR
            # 1600      = VS 10.0 (v100 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "10" AND NOT VERSION_MAJOR STREQUAL "16") OR
            # 1500      = VS  9.0 (v90 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "9" AND NOT VERSION_MAJOR STREQUAL "15") OR
            # 1400      = VS  8.0 (v80 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "8" AND NOT VERSION_MAJOR STREQUAL "14") OR
            # 1310      = VS  7.1, 1300      = VS  7.0
            (CONAN_COMPILER_VERSION STREQUAL "7" AND NOT VERSION_MAJOR STREQUAL "13") OR
            # 1200      = VS  6.0
            (CONAN_COMPILER_VERSION STREQUAL "6" AND NOT VERSION_MAJOR STREQUAL "12") )
            conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "gcc")
        conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
        set(_CHECK_VERSION ${VERSION_MAJOR}.${VERSION_MINOR})
        set(_CONAN_VERSION ${CONAN_COMPILER_MAJOR}.${CONAN_COMPILER_MINOR})
        if(NOT ${CONAN_COMPILER_VERSION} VERSION_LESS 5.0)
            conan_message(STATUS "Conan: Compiler GCC>=5, checking major version ${CONAN_COMPILER_VERSION}")
            conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
            if("${CONAN_COMPILER_MINOR}" STREQUAL "")
                set(_CHECK_VERSION ${VERSION_MAJOR})
                set(_CONAN_VERSION ${CONAN_COMPILER_MAJOR})
            endif()
        endif()
        conan_message(STATUS "Conan: Checking correct version: ${_CHECK_VERSION}")
        if(NOT ${_CHECK_VERSION} VERSION_EQUAL ${_CONAN_VERSION})
            conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "clang")
        conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
        set(_CHECK_VERSION ${VERSION_MAJOR}.${VERSION_MINOR})
        set(_CONAN_VERSION ${CONAN_COMPILER_MAJOR}.${CONAN_COMPILER_MINOR})
        if(NOT ${CONAN_COMPILER_VERSION} VERSION_LESS 8.0)
            conan_message(STATUS "Conan: Compiler Clang>=8, checking major version ${CONAN_COMPILER_VERSION}")
            if("${CONAN_COMPILER_MINOR}" STREQUAL "")
                set(_CHECK_VERSION ${VERSION_MAJOR})
                set(_CONAN_VERSION ${CONAN_COMPILER_MAJOR})
            endif()
        endif()
        conan_message(STATUS "Conan: Checking correct version: ${_CHECK_VERSION}")
        if(NOT ${_CHECK_VERSION} VERSION_EQUAL ${_CONAN_VERSION})
            conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "apple-clang" OR CONAN_COMPILER STREQUAL "sun-cc" OR CONAN_COMPILER STREQUAL "mcst-lcc")
        conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
        if(${CONAN_COMPILER_MAJOR} VERSION_GREATER_EQUAL "13" AND "${CONAN_COMPILER_MINOR}" STREQUAL "" AND ${CONAN_COMPILER_MAJOR} VERSION_EQUAL ${VERSION_MAJOR})
           # This is correct,  13.X is considered 13
        elseif(NOT ${VERSION_MAJOR}.${VERSION_MINOR} VERSION_EQUAL ${CONAN_COMPILER_MAJOR}.${CONAN_COMPILER_MINOR})
           conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "intel")
        conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
        if(NOT ${CONAN_COMPILER_VERSION} VERSION_LESS 19.1)
            if(NOT ${VERSION_MAJOR}.${VERSION_MINOR} VERSION_EQUAL ${CONAN_COMPILER_MAJOR}.${CONAN_COMPILER_MINOR})
               conan_error_compiler_version()
            endif()
        else()
            if(NOT ${VERSION_MAJOR} VERSION_EQUAL ${CONAN_COMPILER_MAJOR})
               conan_error_compiler_version()
            endif()
        endif()
    else()
        conan_message(STATUS "WARN: Unknown compiler '${CONAN_COMPILER}', skipping the version check...")
    endif()
endfunction()


function(conan_check_compiler)
    if(CONAN_DISABLE_CHECK_COMPILER)
        conan_message(STATUS "WARN: Disabled conan compiler checks")
        return()
    endif()
    if(NOT DEFINED CMAKE_CXX_COMPILER_ID)
        if(DEFINED CMAKE_C_COMPILER_ID)
            conan_message(STATUS "This project seems to be plain C, using '${CMAKE_C_COMPILER_ID}' compiler")
            set(CMAKE_CXX_COMPILER_ID ${CMAKE_C_COMPILER_ID})
            set(CMAKE_CXX_COMPILER_VERSION ${CMAKE_C_COMPILER_VERSION})
        else()
            message(FATAL_ERROR "This project seems to be plain C, but no compiler defined")
        endif()
    endif()
    if(NOT CMAKE_CXX_COMPILER_ID AND NOT CMAKE_C_COMPILER_ID)
        # This use case happens when compiler is not identified by CMake, but the compilers are there and work
        conan_message(STATUS "*** WARN: CMake was not able to identify a C or C++ compiler ***")
        conan_message(STATUS "*** WARN: Disabling compiler checks. Please make sure your settings match your environment ***")
        return()
    endif()
    if(NOT DEFINED CONAN_COMPILER)
        conan_get_compiler(CONAN_COMPILER CONAN_COMPILER_VERSION)
        if(NOT DEFINED CONAN_COMPILER)
            conan_message(STATUS "WARN: CONAN_COMPILER variable not set, please make sure yourself that "
                          "your compiler and version matches your declared settings")
            return()
        endif()
    endif()

    if(NOT CMAKE_HOST_SYSTEM_NAME STREQUAL ${CMAKE_SYSTEM_NAME})
        set(CROSS_BUILDING 1)
    endif()

    # If using VS, verify toolset
    if (CONAN_COMPILER STREQUAL "Visual Studio")
        if (CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "LLVM" OR
            CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "llvm" OR
            CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "clang" OR
            CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "Clang")
            set(EXPECTED_CMAKE_CXX_COMPILER_ID "Clang")
        elseif (CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "Intel")
            set(EXPECTED_CMAKE_CXX_COMPILER_ID "Intel")
        else()
            set(EXPECTED_CMAKE_CXX_COMPILER_ID "MSVC")
        endif()

        if (NOT CMAKE_CXX_COMPILER_ID MATCHES ${EXPECTED_CMAKE_CXX_COMPILER_ID})
            message(FATAL_ERROR "Incorrect '${CONAN_COMPILER}'. Toolset specifies compiler as '${EXPECTED_CMAKE_CXX_COMPILER_ID}' "
                                "but CMake detected '${CMAKE_CXX_COMPILER_ID}'")
        endif()

    # Avoid checks when cross compiling, apple-clang crashes because its APPLE but not apple-clang
    # Actually CMake is detecting "clang" when you are using apple-clang, only if CMP0025 is set to NEW will detect apple-clang
    elseif((CONAN_COMPILER STREQUAL "gcc" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "GNU") OR
        (CONAN_COMPILER STREQUAL "apple-clang" AND NOT CROSS_BUILDING AND (NOT APPLE OR NOT CMAKE_CXX_COMPILER_ID MATCHES "Clang")) OR
        (CONAN_COMPILER STREQUAL "clang" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "Clang") OR
        (CONAN_COMPILER STREQUAL "sun-cc" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "SunPro") )
        message(FATAL_ERROR "Incorrect '${CONAN_COMPILER}', is not the one detected by CMake: '${CMAKE_CXX_COMPILER_ID}'")
    endif()


    if(NOT DEFINED CONAN_COMPILER_VERSION)
        conan_message(STATUS "WARN: CONAN_COMPILER_VERSION variable not set, please make sure yourself "
                             "that your compiler version matches your declared settings")
        return()
    endif()
    check_compiler_version()
endfunction()


macro(conan_set_flags build_type)
    set(CMAKE_CXX_FLAGS${build_type} "${CMAKE_CXX_FLAGS${build_type}} ${CONAN_CXX_FLAGS${build_type}}")
    set(CMAKE_C_FLAGS${build_type} "${CMAKE_C_FLAGS${build_type}} ${CONAN_C_FLAGS${build_type}}")
    set(CMAKE_SHARED_LINKER_FLAGS${build_type} "${CMAKE_SHARED_LINKER_FLAGS${build_type}} ${CONAN_SHARED_LINKER_FLAGS${build_type}}")
    set(CMAKE_EXE_LINKER_FLAGS${build_type} "${CMAKE_EXE_LINKER_FLAGS${build_type}} ${CONAN_EXE_LINKER_FLAGS${build_type}}")
endmacro()


macro(conan_global_flags)
    if(CONAN_SYSTEM_INCLUDES)
        include_directories(SYSTEM ${CONAN_INCLUDE_DIRS}
                                   "$<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_RELEASE}>"
                                   "$<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_RELWITHDEBINFO}>"
                                   "$<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_MINSIZEREL}>"
                                   "$<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_DEBUG}>")
    else()
        include_directories(${CONAN_INCLUDE_DIRS}
                            "$<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_RELEASE}>"
                            "$<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_RELWITHDEBINFO}>"
                            "$<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_MINSIZEREL}>"
                            "$<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_DEBUG}>")
    endif()

    link_directories(${CONAN_LIB_DIRS})

    conan_find_libraries_abs_path("${CONAN_LIBS_DEBUG}" "${CONAN_LIB_DIRS_DEBUG}"
                                  CONAN_LIBS_DEBUG)
    conan_find_libraries_abs_path("${CONAN_LIBS_RELEASE}" "${CONAN_LIB_DIRS_RELEASE}"
                                  CONAN_LIBS_RELEASE)
    conan_find_libraries_abs_path("${CONAN_LIBS_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_RELWITHDEBINFO}"
                                  CONAN_LIBS_RELWITHDEBINFO)
    conan_find_libraries_abs_path("${CONAN_LIBS_MINSIZEREL}" "${CONAN_LIB_DIRS_MINSIZEREL}"
                                  CONAN_LIBS_MINSIZEREL)

    add_compile_options(${CONAN_DEFINES}
                        "$<$<CONFIG:Debug>:${CONAN_DEFINES_DEBUG}>"
                        "$<$<CONFIG:Release>:${CONAN_DEFINES_RELEASE}>"
                        "$<$<CONFIG:RelWithDebInfo>:${CONAN_DEFINES_RELWITHDEBINFO}>"
                        "$<$<CONFIG:MinSizeRel>:${CONAN_DEFINES_MINSIZEREL}>")

    conan_set_flags("")
    conan_set_flags("_RELEASE")
    conan_set_flags("_DEBUG")

endmacro()


macro(conan_target_link_libraries target)
    if(CONAN_TARGETS)
        target_link_libraries(${target} ${CONAN_TARGETS})
    else()
        target_link_libraries(${target} ${CONAN_LIBS})
        foreach(_LIB ${CONAN_LIBS_RELEASE})
            target_link_libraries(${target} optimized ${_LIB})
        endforeach()
        foreach(_LIB ${CONAN_LIBS_DEBUG})
            target_link_libraries(${target} debug ${_LIB})
        endforeach()
    endif()
endmacro()


macro(conan_include_build_modules)
    if(CMAKE_BUILD_TYPE)
        if(${CMAKE_BUILD_TYPE} MATCHES "Debug")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_DEBUG} ${CONAN_BUILD_MODULES_PATHS})
        elseif(${CMAKE_BUILD_TYPE} MATCHES "Release")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_RELEASE} ${CONAN_BUILD_MODULES_PATHS})
        elseif(${CMAKE_BUILD_TYPE} MATCHES "RelWithDebInfo")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_RELWITHDEBINFO} ${CONAN_BUILD_MODULES_PATHS})
        elseif(${CMAKE_BUILD_TYPE} MATCHES "MinSizeRel")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_MINSIZEREL} ${CONAN_BUILD_MODULES_PATHS})
        endif()
    endif()

    foreach(_BUILD_MODULE_PATH ${CONAN_BUILD_MODULES_PATHS})
        include(${_BUILD_MODULE_PATH})
    endforeach()
endmacro()


### Definition of user declared vars (user_info) ###

set(CONAN_USER_FREETYPE_LIBTOOL_VERSION "24.1.18")