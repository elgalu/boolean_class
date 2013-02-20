module BooleanClass
  module Conversion
    # Performs type conversion from anything to true/false
    #
    # @param [Object] value the object to coerce
    #
    # @return [Boolean] false when *value* is either false or nil
    #   otherwise returns true
    #
    # @example True values
    #   Boolean(true)  #=> true
    #   Boolean(999)   #=> true
    #   Boolean(0)     #=> true
    #
    # @example False values
    #   Boolean(false) #=> false
    #   Boolean(nil)   #=> false
    #
    def Boolean(value)
      value ? true : false
    end
  end
end
