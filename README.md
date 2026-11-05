# Stream Video WebRTC

### Please refer to the main repo for more information: [stream-video-swift](https://github.com/GetStream/stream-video-swift/)

This repository just serves as the hosting for our Package.swift pointing to precompiled WebRTC XCFramework.

## Release

To release a new version of the package, run the following command.
The release publishes GitHub and Swift Package Manager only:

```bash
bundle install
bundle exec fastlane release version:1.2.3
```

Publish an existing GitHub release to CocoaPods with the `Publish on Cocoapods` workflow.
CocoaPods has no separate pre-release flag, so a GitHub pre-release is published only when its version is already a CocoaPods pre-release (it contains a letter or hyphen, for example `1.2.3-beta.1`).
A stable version marked pre-release on GitHub is skipped, because Trunk would otherwise ship it as a final pod.

`Publish from WebRTC` also downloads `WebRTC.dSYMs.zip` when the upstream
release provides it. Both the original and renamed `StreamWebRTC.dSYMs.zip`
are attached to this repository's release. The dSYM bundle, metadata, and
DWARF filename are renamed; the DWARF contents and UUIDs are preserved.
Missing assets (HTTP 404) are optional; other download errors, invalid archives,
or symbols whose UUIDs do not match the framework fail preparation.
