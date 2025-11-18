Pod::Spec.new do |spec|
  spec.name         = "StreamWebRTC"
  spec.version      = "137.0.46"
  spec.summary      = "Stream WebRTC"
  spec.description  = "WebRTC pre-compiled library for Darwin."

  spec.homepage = "https://getstream.io/video/"
  spec.license = { type: 'BSD', file: 'WebRTC.xcframework/LICENSE.md' }
  spec.author = { "getstream.io" => "support@getstream.io" }
  spec.social_media_url = "https://getstream.io"

  spec.ios.deployment_target = '13.0'

  spec.source = { http: "https://github.com/GetStream/stream-video-swift-webrtc/releases/download/#{spec.version}/WebRTC.xcframework.zip" }
  spec.vendored_frameworks = "WebRTC.xcframework"
end
