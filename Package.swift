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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/125.6422.069/StreamWebRTC.xcframework.zip",
            checksum: "0645e8aaeb60d4b35593b12d82e11b18f9131a7800b825aa363641fdc2b80ad3"
        ),
    ]
)
