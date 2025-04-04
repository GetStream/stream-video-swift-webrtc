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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/125.6422.066/StreamWebRTC.xcframework.zip",
            checksum: "7c0fbf7a9080efb44841f95ba1906e562f7080d28d454fa4c36ac4c8dae66ce8"
        ),
    ]
)
