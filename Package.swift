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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/137.0.67/StreamWebRTC.xcframework.zip",
            checksum: "a1b57a7f32b532a9c92c1482f845dbd2a2196fe3040bc94f4217825d6de65338"
        ),
    ]
)
