Fake ActiveModel

    class Post
      attr_reader :id

      include ActiveModel::Validations
      include ActiveModel::Conversion
      extend ActiveModel::Naming

      def persisted?
        true
      end
    end
