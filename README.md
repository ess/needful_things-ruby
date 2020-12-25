# NeedfulThings #

A required hash fields checker. At present, it rolls with the assumption that not only is the hash key present, but its associated value is also non-nil.

## Installation ##

Add this line to your application's Gemfile:

```ruby
gem 'needful_things'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install needful_things

## Usage ##

In lieu of real documentation, here's an example.

```ruby
require 'needful_things'

class SomeOperation
  include NeedfulThings

  needs name: :widget_id, otherwise: :widget_id_not_present

  def call(input = {})
    neediness(input) do |needs|
      needs.fulfilled do
        true
      end

      needs.unmet do |reason|
        false
      end
    end
  end
end
```

## Development ##

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing ##

Bug reports and pull requests are welcome on GitHub at https://github.com/ess/needful_things.


## License ##

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
