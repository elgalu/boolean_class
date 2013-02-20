require 'boolean_class/boolean'
require "boolean_class/conversion"

# Make Boolean() conversion method possible on any scope
#
# @see BooleanClass::Conversion
class Object
  # Polite monkey patching:
  #   Instead of defining Boolean() directly in Kernel i explicitly inlude a module
  #   So anyone can track later on monkey patches to core modules
  include BooleanClass::Conversion
end

# Make possible instance type and class inheritance checking
#
# @example Instance type checking
#   true.is_a?(Boolean)   #=> true
#
# @example Class type checking
#   TrueClass < Boolean   #=> true
#
# @see Boolean
# @see FalseClass
class TrueClass
  include Boolean
end

# Make possible instance type and class inheritance checking
#
# @example Instance type checking
#   false.is_a?(Boolean)  #=> true
#   (0==1).is_a?(Boolean) #=> true
#
# @example Class type checking
#   FalseClass < Boolean  #=> true
#
# @see Boolean
# @see TrueClass
class FalseClass
  include Boolean
end
