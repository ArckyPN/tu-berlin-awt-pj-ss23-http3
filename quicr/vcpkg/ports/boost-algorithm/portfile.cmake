# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/algorithm
    REF boost-1.77.0
    SHA512 1be1d06c3233d2dad2941696ecbbd77ff2d0cb3304e7a9fee4aa59bd8209ca858520d45bc67148e20defe98bf2c49ac79acf39c07bcc2b2262c1a812514d568b
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})