Example:

    class User < ActiveRecord::Base
      to_param :login
    end

Custom:

    class User < ActiveRecord::Base
      def self.find(input)
        input.to_i == 0 ? find_by!(code: login) : super
      end

      def to_param
        login
      end
    end
