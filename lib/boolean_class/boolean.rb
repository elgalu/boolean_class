# A module with no code within it.
# Just meant to be included, that's all.
#
# @example Instance type checking
#   0.is_a?(Boolean)      #=> false
#   nil.is_a?(Boolean)    #=> false
#
# @example Class type checking
#   Object < Boolean      #=> nil (false)
#   NilClass < Boolean    #=> nil (false)
#   Class < Boolean       #=> nil (false)
#
# @see TrueClass
# @see FalseClass
module Boolean; end
