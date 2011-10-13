require 'active_support/concern'

module ItalianJob
  module Istatable
    extend ActiveSupport::Concern

    def self.included(base)
      base.send(:include, ActiveModel::Conversion)
      base.send(:include, ActiveModel::Validations)
      base.send(:extend, ActiveModel::Naming)

      attr_accessor :code, :name
      class<<self; attr_accessor :instances; end
    end

    module ClassMethods
      def store(attributes)
        @instances ||= {}
        @instances[attributes[:code]] = self.new(attributes)
      end

      def find_by_code(code)
        @instances[code] or raise Exception
      end
    end

    module InstanceMethods

      def initialize(attributes = {})
        attributes.each do |name, value|
          send("#{name}=", value)
        end
      end

    end

  end
end
