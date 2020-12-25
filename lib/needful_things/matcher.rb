require 'dry/matcher'

module NeedfulThings

  Matcher = Dry::Matcher.new(
    fulfilled: Dry::Matcher::Case.new(
      match: -> result {result.success?},
      resolve: -> result {result.value!}
    ),

    unmet: Dry::Matcher::Case.new(
      match: -> result {result.failure?},
      resolve: -> result {result.failure}
    )
  )

end
