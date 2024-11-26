#!/usr/bin/env bash

if ! command -v gclient &> /dev/null; then
  current_dir=$(pwd)
  mkdir ~/webrtc
  cd ~/webrtc
  git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
  export PATH=$PATH:~/webrtc/depot_tools
  cd $current_dir
fi

rm -rf src
rm -rf .cipd
git clone https://github.com/GetStream/webrtc.git src
cd src
git checkout patch/m125
cd ..
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
./tools_webrtc/ios/build_ios_libs.py --deployment-target 13.0