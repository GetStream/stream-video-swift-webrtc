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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/137.0.61/StreamWebRTC.xcframework.zip",
            checksum: "076743c9594a0a65257c7c28f0fa0db42011cdfd84e5958fd20ed12bcdbdd02e"
        ),
    ]
)
