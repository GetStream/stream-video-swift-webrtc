.PHONY: fastlane

fastlane:
	rm -rf fastlane/ Gemfile.lock Gemfile
	git clone https://github.com/GetStream/stream-webrtc-release-pipeline fastlane/
	mv fastlane/Gemfile.lock Gemfile.lock
	mv fastlane/Gemfile Gemfile
	bundle install
