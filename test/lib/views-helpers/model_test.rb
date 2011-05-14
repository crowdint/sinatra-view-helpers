require 'test_helper'

class Foo
  include ViewsHelpers::Model
  attr_accessor :name

  validates :name, :presence => true
end

describe ViewsHelpers::Model do
  describe 'Validate a Foo onject' do
    before do
      @foo = Foo.new
    end
    it 'should be invalid if there was no name' do
      assert_equal true, @foo.invalid?
    end
    it 'should be valid if there was a name' do
      @foo.name = 'alpha'
      assert_equal true, @foo.valid?
    end
  end
end
