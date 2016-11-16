require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  setup do
    @appointment  = Appointment.new
end


  test "Start date and time must be unique for Dock" do
    @appointment  = Appointment.create
    @appointment.start_date = '2016-10-28'
    @appointment.start_time = '8am'
    @appointment.save
    assert @appointment.invalid?,"Start date and time must be unique for Dock"
  end

  test "Start time must not be blank" do
    @appointment  = appointments(:app1)
    @appointment.start_time = ''
    assert(@appointment.invalid?,"Should not accept empty start time")
  end

  test "Vendor must not be blank" do
    @appointment  = appointments(:app1)
    @appointment.vendor_id = ''
    assert(@appointment.invalid?,"Should not accept empty vendor")
  end

  test "dock must not be blank" do
    @appointment  = appointments(:app1)
    @appointment.dock_id = ''
    assert(@appointment.invalid?,"Should not accept empty dock")
  end




  # test "the truth" do
  #   assert true
  # end
end

