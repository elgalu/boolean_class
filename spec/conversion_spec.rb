require 'spec_helper'

describe '#Boolean' do
  it 'converts true expressions to true:TrueClass' do
    Boolean(true).should be(true)
    Boolean(999).should be(true)
    Boolean(0).should be(true)
  end

  it 'converts false expressions to false:FalseClass' do
    Boolean(false).should be(false)
    Boolean(nil).should be(false)
  end
end
