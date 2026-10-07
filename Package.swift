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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/145.25.0/StreamWebRTC.xcframework.zip",
            checksum: "aa8cbd50e8f3dd3286e6b5f5948c6547b0f337506b26a804d4bdc98028ed9c57"
        ),
    ]
)
