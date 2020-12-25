require 'dry/monads'
require 'needful_things/matcher'

module NeedfulThings

  class Engine
    include Dry::Monads[:maybe, :result, :try]

    def register(name:, otherwise:)
      requirements[name] = otherwise
    end

    def verify(input = {}, &block)
      Matcher.(
        Maybe(find_unmet(input)).fmap {|need| reason(need)}.to_result.flip,
        &block
      )
    end

    private
    def requirements
      @requirements ||= {}
    end

    def find_unmet(input = {})
      needs.reject {|need| Try {input.fetch(need)}.value_or(nil)}.first
    end

    def needs
      requirements.keys
    end

    def reason(need)
      requirements.fetch(need)
    end
  end

end
