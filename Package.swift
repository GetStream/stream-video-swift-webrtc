// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "StreamWebRTC",
    platforms: [
      .iOS(.v13),
      .macOS(.v11)
    ],
    products: [
        .library(
            name: "StreamWebRTC",
            targets: ["StreamWebRTC"]
        ),
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(
            name: "StreamWebRTC",
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/148.0.0/StreamWebRTC.xcframework.zip",
            checksum: "acc7330ece327c68dfa5b90d82c49dcec9847ef13b1a6b989c0a2de16d9e1ff0"
        ),
    ]
)
