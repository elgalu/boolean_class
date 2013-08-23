require 'spec_helper'

describe 'Inheritance' do
  it 'allows instance type checking' do
    true.is_a?(Boolean).should be_true
    false.is_a?(Boolean).should be_true
    0.is_a?(Boolean).should be_false
    nil.is_a?(Boolean).should be_false
    (0 == 1).is_a?(Boolean).should be_true
  end

  it 'allows class type checking' do
    (Object < Boolean).should be_false
    (NilClass < Boolean).should be_false
    (Class < Boolean).should be_false
    (TrueClass < Boolean).should be_true
    (FalseClass < Boolean).should be_true
  end
end
