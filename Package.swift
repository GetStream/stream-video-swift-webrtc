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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/137.0.68/StreamWebRTC.xcframework.zip",
            checksum: "ad8e47f8ba6a22419828df2108aa6fd8b83dc06fb1a879835b34f668e63e84d5"
        ),
    ]
)
