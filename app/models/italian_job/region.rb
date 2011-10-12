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

    class <<self; attr_accessor :instances; end

    def self.store(attributes)
      @instances ||=[]
      @instances << Region.new(attributes)
    end

    store :name =>"Piemonte", :code=>"001"

    def self.find_by_code(code)
     @instances.find { |e| e }
    end

  end
end
