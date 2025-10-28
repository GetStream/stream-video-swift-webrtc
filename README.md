# Stream Video WebRTC

### Please refer to the main repo for more information: [stream-video-swift](https://github.com/GetStream/stream-video-swift/)

This repository just serves as the hosting for our Package.swift pointing to precompiled WebRTC XCFramework.

## Build

To build a debug version of the package, run the following command:

```bash
make fastlane
bundle exec fastlane build webrtc_branch:main
```

## Release

To build and release a new version of the package, run the following command:

```bash
make fastlane
bundle exec fastlane release version:1.2.3
```
