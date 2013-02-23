# BooleanClass

[![Build Status](https://travis-ci.org/elgalu/boolean_class.png)](https://travis-ci.org/elgalu/boolean_class)
[![Dependency Status](https://gemnasium.com/elgalu/boolean_class.png)](https://gemnasium.com/elgalu/boolean_class)
[![Code Climate](https://codeclimate.com/github/elgalu/boolean_class.png)](https://codeclimate.com/github/elgalu/boolean_class)

## Description

Performs type conversion from anything to true:TrueClass / false:FalseClass

Similar to [boolean][] gem but:

- without parse_bool()
- without raising exceptions
- without to_bool() to_b() methods

## Installation

`$ gem install boolean_class` or add to your [Gemfile][] this line: `gem 'boolean_class'` then run [bundle install][]

## Usage

Just `require 'boolean_class'` and then use it as:

### As a conversion method Boolean()

```ruby
require 'boolean_class'

# Example true values
Boolean(true)  #=> true
Boolean(999)   #=> true
Boolean(0)     #=> true

# Example false values
Boolean(false) #=> false
Boolean(nil)   #=> false
```

### As data type checking / validation

```ruby
require 'boolean_class'

# Instance type checking
true.is_a?(Boolean)   #=> true
false.is_a?(Boolean)  #=> true
0.is_a?(Boolean)      #=> false
nil.is_a?(Boolean)    #=> false
(0==1).is_a?(Boolean) #=> true

# Class type checking
Object < Boolean      #=> nil (false)
NilClass < Boolean    #=> nil (false)
Class < Boolean       #=> nil (false)
TrueClass < Boolean   #=> true
FalseClass < Boolean  #=> true
```

## Contributing

1. Fork it.
2. Make your feature addition or bug fix and create your feature branch.
3. Add specs/tests for it. This is important so I don’t break it in a future version unintentionally.
4. Commit, create a new Pull Request.
5. Check that your pull request passes the [build][travis pull requests].

## License

Released under the MIT License. See the [LICENSE][] file for further details.

## Links

[RubyGems][] | [Documentation][] | [Source][] | [Bugtracker][]


[boolean]: http://rubygems.org/gems/boolean
[bundle install]: http://gembundler.com/man/bundle-install.1.html
[Gemfile]: http://gembundler.com/man/gemfile.5.html
[travis pull requests]: https://travis-ci.org/elgalu/boolean_class/pull_requests
[LICENSE]: LICENSE.txt
[RubyGems]: https://rubygems.org/gems/boolean_class
[Documentation]: http://rubydoc.info/gems/boolean_class
[Source]: https://github.com/elgalu/boolean_class
[Bugtracker]: https://github.com/elgalu/boolean_class/issues
