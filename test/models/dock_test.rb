require 'test_helper'

class DockTest < ActiveSupport::TestCase
  setup do
    @dock = Dock.new
  end
  test "name cannot be blank" do
    @dock = docks(:one)
    @dock.name = ''
    assert(@dock.invalid?,"Should not accept empty name")
  end
end
