require 'needful_things/dsl'
require 'needful_things/instance_methods'
require 'needful_things/version'

module NeedfulThings
  include InstanceMethods

  def self.included(base)
    base.send :extend, DSL
  end
end
