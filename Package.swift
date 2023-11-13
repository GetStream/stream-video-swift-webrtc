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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/114.5735.08/StreamWebRTC.zip",
            checksum: "9b03bca9e35061d2d9d58aa7dd255c72b0fd0dc6ff4aa2ae1756b57cdbf99bf9"
        ),
    ]
)
