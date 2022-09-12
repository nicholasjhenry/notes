Tags:

    @authenticated
    Feature : Publishing Widgets
      Scenario:

    Before("@authenticated") do
      stub_authentication
    end

    @no-ui
    Scenario: Non-matching Password

    Before "@no-ui" do
      extend DomainHelers
    end

    module DomainHelpers

      attr_reader :current_user

      def authenticate
        @current_user = create :user
      end

      def tweet(message)
        current_user.tweet message
      end
    end

Table

    table.hashes
    table.rows_hash
