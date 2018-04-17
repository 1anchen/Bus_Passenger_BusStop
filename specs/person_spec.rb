require('minitest/autorun')
require('minitest/rg')
require_relative('../person')
# require_relative('../instrument')
# require_relative('../band')

class PersonTest < MiniTest::Test

def setup
  @person = Person.new("Katy",5)
end

# def test_bus_can_drive
#   assert_equal("Brum Brum", @bus.drive())
# end

end
