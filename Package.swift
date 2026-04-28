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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/1.145.2/StreamWebRTC.xcframework.zip",
            checksum: "ad3a374e85343589eff9550e5dc76aa9c735cfa3499bc0bfcf6e8fc5478210d4"
        ),
    ]
)
