# BooleanClass

Performs type conversion from anything to true:TrueClass / false:FalseClass

Similar to [boolean][] gem but:

- without parse_bool()
- without raising exceptions
- without to_bool() to_b() methods

## Installation

Add this line to your application's Gemfile:

    gem 'boolean_class'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install boolean_class

## Usage

Just `require 'boolean_class'` and then use it.

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

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[boolean]: http://rubygems.org/gems/boolean
