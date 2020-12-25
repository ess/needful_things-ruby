require 'needful_things/engine'

module NeedfulThings

  module DSL
    def needs(name:, otherwise:)
      needs_engine.register(name: name, otherwise: otherwise)
    end

    def needs_engine
      @needs_engine ||= Engine.new
    end
  end

end
