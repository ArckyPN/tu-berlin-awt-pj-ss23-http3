# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/odeint
    REF boost-1.77.0
    SHA512 33f06b5450855c35c719418ed320ddcdf926c5f27f03d18b345cdaa7921fa749d626dfb8c7c3fdcb102074499e96cf526cb7bdaac1e1a67f6e9f2db5ca3bf481
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})