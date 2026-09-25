# Stream Video WebRTC

### Please refer to the main repo for more information: [stream-video-swift](https://github.com/GetStream/stream-video-swift/)

This repository just serves as the hosting for our Package.swift pointing to precompiled WebRTC XCFramework.

## Release

To release a new version of the package, run the following command:

```bash
bundle install
bundle exec fastlane release version:1.2.3
```

`Publish from WebRTC` also downloads `WebRTC.dSYMs.zip` when the upstream
release provides it. Both the original and renamed `StreamWebRTC.dSYMs.zip`
are attached to this repository's release. The dSYM bundle, metadata, and
DWARF filename are renamed; the DWARF contents and UUIDs are preserved.
Missing assets (HTTP 404) are optional; other download errors, invalid archives,
or symbols whose UUIDs do not match the framework fail preparation.
