module Fastlane
  module Actions

    class PublishCodeCoverageAction < Action
      def self.run(params)
        UI.message "Generating Slather report"
        UI.message "Obtaining coverage number"
        UI.message "Getting commit SHA"
        UI.message "Publishing coverage on Github"
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Publish code coverage to a Github commit status check"
      end

      def self.details
        "This action uses Slather to generate a code coverage report for the current Xcode project status, gets the coverage number, gets the current commit and publish the coverage number via Github API to a status check, making it available to see in pull requests, for example"
      end

      def self.authors
        ["Federico Jordan"]
      end

      def self.is_supported?(platform)
        platform == :ios
      end
    end
  end
end