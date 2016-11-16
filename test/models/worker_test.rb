require 'test_helper'

class WorkerTest < ActiveSupport::TestCase
 setup do
   @worker = Worker.new
 end

test "name cannot be blank" do
  @worker = workers(:one)
  @worker.name = ''
  assert(@worker.invalid?,"Should not accept empty name")
end

 test "Address cannot be blank" do
   @worker = workers(:one)
   @worker.address = ''
   assert(@worker.invalid?,"Should not accept empty Address")
 end
 test "City cannot be blank" do
   @worker = workers(:one)
   @worker.city = ''
   assert(@worker.invalid?,"Should not accept empty city")
 end
 test "State cannot be blank and must be valid" do
   @worker = workers(:one)
   @worker.state = ''
   assert(@worker.invalid?,"Should not accept empty State and must be valid")
 end
 test "Zipcode cannot be blank and must be a number" do
   @worker = workers(:one)
   @worker.zip = ''
   assert(@worker.invalid?,"Should not accept empty Zipcode ad must be number")
 end
 test "Payrate cannot be blank and must be a number" do
   @worker = workers(:one)
   @worker.payrate = ''
   @worker.payrate = 'string'
   assert(@worker.invalid?,"Should not accept empty Payrate and must be a number")
 end



end
