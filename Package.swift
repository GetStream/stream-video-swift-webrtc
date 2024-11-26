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
            url: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/125.6422.06/WebRTC.zip",
            checksum: "c3b690ec04727cf5510aeb073fc24156b74a074293a66d39be0a5c2570df1422"
        ),
    ]
)
