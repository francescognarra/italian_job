module ItalianJob
  class Region

    include ActiveModel::Conversion
    extend ActiveModel::Naming
    include ActiveModel::Validations

    attr_accessor :name, :code

    def initialize(attributes = {})
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end

    def persisted?
      false
    end

  end
end
