require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
# require_relative('../band')

class BusTest < MiniTest::Test

def setup
  @katy = Person.new("Katy",5)
  @mike = Person.new("Mike",6)
  @john = Person.new("John",6)
  passenger = [@katy, @mike, @john]
  @bus = Bus.new(2,"Aberdeen",[])
  @bus2 = Bus.new(2,"Aberdeen",passenger)
  @person = Person.new("Katy",5)
end

def test_bus_can_drive
  assert_equal("Brum Brum", @bus.drive())
end

def test_how_many_passenger
  assert_equal(0, @bus.number_of_passenger())
end

def test_how_many_passenger__add_1
  @bus.pick_up(@person)
  assert_equal(1, @bus.number_of_passenger())
end

def test_how_many_passenger__remove_1
  @bus2.drop_off(@katy)
  assert_equal(2, @bus2.number_of_passenger())
end

def test_empty_bus
  @bus2.empty_bus
  assert_equal(0, @bus2.number_of_passenger())
end


end
