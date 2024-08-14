# frozen_string_literal: true

module Lutaml
  module Model
    module TomlAdapter
      # Base class for TOML objects
      class TomlObject
        attr_reader :attributes

        def initialize(attributes = {})
          @attributes = attributes
        end

        def [](key)
          @attributes[key]
        end

        def []=(key, value)
          @attributes[key] = value
        end

        def to_h
          @attributes
        end
      end
    end
  end
end