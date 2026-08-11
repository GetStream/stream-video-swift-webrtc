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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/145.14.0/StreamWebRTC.xcframework.zip",
            checksum: "b08f8de8fc44d846dfe6858256ddb6f72268ab6856c3a9addd22a1ecfa3ba0d2"
        ),
    ]
)
