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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/125.6422.067/StreamWebRTC.xcframework.zip",
            checksum: "28a5af8d24ab285a98263087b4593f978cfd0ea5b31bd4778a3f1131724d6671"
        ),
    ]
)
