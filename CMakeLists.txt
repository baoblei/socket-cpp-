cmake_minimum_required(VERSION 3.0.0)
project(stream VERSION 0.1.0 LANGUAGES C CXX)

include(CTest)
enable_testing()

add_executable(stream main.cpp)
add_executable(client client_stream.cpp)
add_executable(serv serv_stream.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
