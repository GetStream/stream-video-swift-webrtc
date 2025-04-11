module Fastlane
  module Actions
    class AddSnapshotToCurrentVersionAction < Action
      def self.run(params)
        content = File.read(params[:file_path])
        current_version = content.match(/String\s+=\s+"([\d.]+).*"/)[1]
        updated_version = "#{current_version}-SNAPSHOT"
        new_content = content.sub!(/"[^"]+"/, "\"#{updated_version}\"")
        File.open(params[:file_path], 'w') { |f| f.puts(new_content) }
        UI.important("Replaced #{current_version} with #{updated_version} 📝")
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        'Add snapshot postfix to the current release version'
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
            key: :file_path,
            description: 'File with a version that needs to be a snapshot'
          )
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
