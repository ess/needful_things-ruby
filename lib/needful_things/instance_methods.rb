module NeedfulThings

  module InstanceMethods
    def neediness(input = {}, &block)
      self.class.needs_engine.verify(input, &block)
    end
  end

end
