# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boolean_class/version'

Gem::Specification.new do |gem|

  gem.platform      = Gem::Platform::RUBY
  gem.name          = "boolean_class"
  gem.version       = BooleanClass::VERSION
  gem.summary       = %q{Performs type conversion from anything to true:TrueClass / false:FalseClass}
  gem.description   = gem.summary

  gem.required_ruby_version     = '>= 1.9.2'
  gem.required_rubygems_version = '>= 1.8'

  gem.license       = 'MIT'

  gem.authors       = ["Leo Gallucci"]
  gem.email         = ["elgalu3@gmail.com"]
  gem.homepage      = "https://github.com/elgalu/boolean_class"

  gem.require_paths = ["lib"]
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})

  gem.add_development_dependency "bundler", ">= 1.2"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", "~> 2.13"
  gem.add_development_dependency "redcarpet", ">= 2.2"
  gem.add_development_dependency "yard", ">= 0.8"
  gem.add_development_dependency "simplecov", ">= 0.7"
  gem.add_development_dependency 'coveralls', '>= 0.5.7'

end
