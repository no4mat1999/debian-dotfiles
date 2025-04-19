#!/bin/bash
git clone -b next --single-branch https://github.com/yshui/picom
cd picom
meson setup --buildtype=release build
ninja -C build