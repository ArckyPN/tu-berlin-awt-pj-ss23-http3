# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/uuid
    REF boost-1.77.0
    SHA512 5548d3eed3f263595d9bb1babbd6f15d37b327c2c0e9ebd539e8d5f85e2fb59e7c9c932df615eb3eefcc2b48fa8e3c741a46a3b2ffad46b40a1a0cd4dde70c3f
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})