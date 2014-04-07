#!/bin/sh

export CC="@CMAKE_C_COMPILER@"
export CXX="@CMAKE_CXX_COMPILER@"
export OBJC="@CMAKE_C_COMPILER@"
export LD="@CMAKE_LINKER@"
export AR="@CMAKE_AR@"
export RANLIB="@CMAKE_RANLIB@"
export STRIP="@CMAKE_STRIP@"
export NM="@CMAKE_NM@"

export ASFLAGS="@LINPHONE_BUILDER_TOOLCHAIN_ASFLAGS@"
export CPPFLAGS="@LINPHONE_BUILDER_CPPFLAGS@"
export CFLAGS="@LINPHONE_BUILDER_CFLAGS@"
export CXXFLAGS="@LINPHONE_BUILD_TOOLCHAIN_CXXFLAGS@"
export OBJCFLAGS="@LINPHONE_BUILD_TOOLCHAIN_OBJCFLAGS@"
export LDFLAGS="@LINPHONE_BUILDER_LDFLAGS@"

export PKG_CONFIG="@LINPHONE_BUILDER_PKG_CONFIG@"
export PKG_CONFIG_PATH="@LINPHONE_BUILDER_PKG_CONFIG_PATH@"
export PKG_CONFIG_LIBDIR="@LINPHONE_BUILDER_PKG_CONFIG_LIBDIR@"

cd @ep_build@
make install PREFIX="@CMAKE_INSTALL_PREFIX@" SHARED="@EP_openh264_LINKING_TYPE@" BUILDTYPE="@EP_openh264_BUILD_TYPE@"
