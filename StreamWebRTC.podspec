Pod::Spec.new do |spec|
  spec.name         = "StreamWebRTC"
  spec.version      = "125.6422.06.2"
  spec.summary      = "Stream WebRTC"
  spec.description  = spec.summary

  spec.homepage = "https://getstream.io/video/"
  spec.license = { type: "BSD-3", file: "LICENSE" }
  spec.author = { "getstream.io" => "support@getstream.io" }
  spec.social_media_url = "https://getstream.io"

  spec.ios.deployment_target = '13.0'
  spec.osx.deployment_target = '10.14'

  spec.source = { http: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/#{spec.version}/WebRTC.xcframework.zip" }
  spec.vendored_frameworks = "WebRTC.xcframework"
end
