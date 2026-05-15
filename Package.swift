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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/145.1.0/StreamWebRTC.xcframework.zip",
            checksum: "232b7cf1c782512080eb18c47cef0ffaf212b5b9580714ac5abe1613fc338e90"
        ),
    ]
)
