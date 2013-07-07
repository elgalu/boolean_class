# BooleanClass

[![Gem Version][GV img]][Gem Version]
[![Build Status][BS img]][Build Status]
[![Dependency Status][DS img]][Dependency Status]
[![Code Climate][CC img]][Code Climate]
[![Coverage Status][CS img]][Coverage Status]
[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/8a65d211cebabff685253265dd3a2f0b "githalytics.com")](http://githalytics.com/elgalu/boolean_class)

## Warning

Looking for typecasting boolean values?

Just use the "bang bang" technique, there is no need for an external gem to achieve that.

```ruby
!!(0.0) #=> true
!!1     #=> true
!!0     #=> true
!!""    #=> true
!!nil   #=> false
!!false #=> false
```

Matz, the creator of Ruby, has a strong [opinion](https://www.ruby-forum.com/topic/4412411#1103364) against a Boolean class:

> There's nothing true and false commonly share, thus no Boolean class.
> Besides that, in Ruby, everything behave as Boolean value, as Xavier
> mentioned in [ruby-talk:406208].
>      matz.

That said, this is just a proof-of-concept gem for some of my experiments.

## Description

Performs type conversion from anything to true:TrueClass / false:FalseClass

```ruby
Boolean(0.0)         #=> true
FalseClass < Boolean #=> true
```

## Anti-Features

Similar to [boolean][] gem but:

- Without parse_bool()
- Without raising exceptions
- Without to_bool() to_b() methods
- Does not pollute Object or Kernel; polite monkey patching with `include BooleanClass::Conversion`

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
3. Update the [Change Log][].
3. Add specs/tests for it. This is important so I don't break it in a future version unintentionally.
4. Commit, create a new Pull Request.
5. Check that your pull request passes the [build][travis pull requests].

## License

Released under the MIT License. See the [LICENSE][] file for further details.

## Links

[RubyGems][] | [Documentation][] | [Source][] | [Bugtracker][] | [Build Status][] | [Dependency Status][] | [Code Climate][]


[boolean]: http://rubygems.org/gems/boolean
[bundle install]: http://gembundler.com/v1.3/man/bundle-install.1.html
[Gemfile]: http://gembundler.com/v1.3/gemfile.html
[LICENSE]: LICENSE.md
[Change Log]: CHANGELOG.md

[RubyGems]: https://rubygems.org/gems/boolean_class
[Documentation]: http://rubydoc.info/gems/boolean_class
[Source]: https://github.com/elgalu/boolean_class
[Bugtracker]: https://github.com/elgalu/boolean_class/issues

[Gem Version]: https://rubygems.org/gems/boolean_class
[Build Status]: https://travis-ci.org/elgalu/boolean_class
[travis pull requests]: https://travis-ci.org/elgalu/boolean_class/pull_requests
[Dependency Status]: https://gemnasium.com/elgalu/boolean_class
[Code Climate]: https://codeclimate.com/github/elgalu/boolean_class
[Coverage Status]: https://coveralls.io/r/elgalu/boolean_class

[GV img]: https://badge.fury.io/rb/boolean_class.png
[BS img]: https://travis-ci.org/elgalu/boolean_class.png
[DS img]: https://gemnasium.com/elgalu/boolean_class.png
[CC img]: https://codeclimate.com/github/elgalu/boolean_class.png
[CS img]: https://coveralls.io/repos/elgalu/boolean_class/badge.png?branch=master
