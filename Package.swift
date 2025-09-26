// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "StreamWebRTC",
    platforms: [
      .iOS(.v13),
      .macOS(.v11),
      .macCatalyst(.v14)
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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/137.0.53/StreamWebRTC.xcframework.zip",
            checksum: "5479c4cc85865819d9c70f6ce3932375aabca6d820b863ad3dd90a17618159d5"
        ),
    ]
)
