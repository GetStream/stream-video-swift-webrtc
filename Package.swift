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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/125.6422.065/StreamWebRTC.xcframework.zip",
            checksum: "0805fbdf6e1a41f1d5297df75f723e361cff484b3d7a3e83a2dd5cde66cc450f"
        ),
    ]
)
