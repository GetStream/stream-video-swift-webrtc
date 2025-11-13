#!/usr/bin/env bash
cd src
./tools_webrtc/ios/build_ios_libs.py \
  --deployment-target 13.0 \
  --extra-gn-args \
    is_debug=false \
    use_goma=false \
    use_rtti=true \
    rtc_libvpx_build_vp9=true
