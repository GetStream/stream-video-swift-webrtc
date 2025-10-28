.PHONY: fastlane

fastlane:
	rm -rf fastlane/
	git clone https://github.com/GetStream/stream-video-webrtc-fastlane fastlane/
	bundle install

