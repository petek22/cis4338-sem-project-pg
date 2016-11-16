require 'test_helper'

class VendorTest < ActiveSupport::TestCase
  setup do
    @vendor = Vendor.new
  end

  test "name cannot be blank" do
    @vendor = vendors(:one)
    @vendor.name = ''
    assert(@vendor.invalid?,"Should not accept empty name")
  end
end
