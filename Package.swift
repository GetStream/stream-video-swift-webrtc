// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "StreamWebRTC",
    platforms: [
      .iOS(.v13),
      .macOS(.v11),
      .macCatalyst(.v14)
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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/137.0.52/StreamWebRTC.xcframework.zip",
            checksum: "19c235cd0bdabe6bd8543e2015eabab8990787c4ff062ff31abf4a3e5eda01ef"
        ),
    ]
)
