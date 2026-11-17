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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/156.0.7/StreamWebRTC.xcframework.zip",
            checksum: "6f7a4ecf0635fedb74587958d3dfdd119e674883279b28bee8a4bdd5d08c5f74"
        ),
    ]
)
