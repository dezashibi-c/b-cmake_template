if (CMAKE_C_COMPILER_ID MATCHES "MSVC")
    message(STATUS "Using MSVC compiler")
    add_compile_options(/W4)
elseif (CMAKE_C_COMPILER_ID MATCHES "GNU")
    message(STATUS "Using GNU compiler")
    add_compile_options(-Wall -Wextra -Wpedantic)
elseif (CMAKE_C_COMPILER_ID MATCHES "Clang")
    message(STATUS "Using Clang compiler")
    add_compile_options(-Wall -Wextra -Wpedantic)
else()
    message(STATUS "Unknown compiler ('${CMAKE_C_COMPILER_ID}') - No compiler option is set")
endif()

if (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /O2")
else()
    if (CMAKE_BUILD_TYPE STREQUAL "Release")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2")
    endif()
endif()

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG "${CMAKE_SOURCE_DIR}/out/Debug")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_SOURCE_DIR}/out/Release")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELWITHDEBINFO "${CMAKE_SOURCE_DIR}/out/RelWithDebInfo")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_MINSIZEREL "${CMAKE_SOURCE_DIR}/out/MinSizeRel")

enable_testing()