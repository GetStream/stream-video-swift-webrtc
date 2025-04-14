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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/125.6422.068/StreamWebRTC.xcframework.zip",
            checksum: "b214bdb65f2bd4a237cfb60528a91e5e7f19d11676b5339d8666d53f2ecd05a0"
        ),
    ]
)
