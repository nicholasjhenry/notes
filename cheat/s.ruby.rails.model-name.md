    def self.model_name
      ::ActiveModel::Name.new(self, nil, name.demodulize)
    end
