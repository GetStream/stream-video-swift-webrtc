// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [
      .iOS(.v13),
      .macOS(.v11)
    ],
    products: [
        .library(
            name: "WebRTC",
            targets: ["WebRTC"]
        ),
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/125.6422.06.2/WebRTC.xcframework.zip",
            checksum: "8829e50e9813a92206681d920a156d44a24454e7073f3169cbefed0f333641cd"
        ),
    ]
)
