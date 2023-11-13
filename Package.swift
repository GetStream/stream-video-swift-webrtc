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
            name: "WebRTC",
            targets: ["WebRTC"]
        ),
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/114.5735.08/StreamWebRTC.zip",
            checksum: "e979a3731ed3294b66e4a8d9e78633010de70b1bbf4c53a221903fc5fce06e2f"
        ),
    ]
)
