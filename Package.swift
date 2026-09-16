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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/145.22.0/StreamWebRTC.xcframework.zip",
            checksum: "f6f3faef187ef4ebbd40f6ade420fc35b1fc2414c9f30bb4ccca1e4a8bac3382"
        ),
    ]
)
