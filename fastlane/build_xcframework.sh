#!/usr/bin/env bash

if ! command -v gclient &> /dev/null; then
  current_dir=$(pwd)
  mkdir $HOME/webrtc
  cd $HOME/webrtc
  git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
  export PATH=$PATH:$HOME/webrtc/depot_tools
  cd $current_dir
fi

rm -rf src
rm -rf .cipd

if [ -n "$1" ]; then
  git clone -b "$1" https://github.com/GetStream/webrtc.git src
else
  git clone https://github.com/GetStream/webrtc.git src
fi

gclient root
gclient config --spec 'solutions = [
{
    "name": "src",
    "url": "git@github.com:GetStream/webrtc.git",
    "deps_file": "DEPS",
    "managed": False,
    "custom_deps": {},
},
]
target_os = ["ios", "mac"]
'
gclient sync

cd src
./tools_webrtc/ios/build_ios_libs.py \
  --deployment-target 13.0 \
  --no-licenses \
  --extra-gn-args \
    is_debug=false \
    use_goma=false \
    use_rtti=true \
    rtc_libvpx_build_vp9=true
