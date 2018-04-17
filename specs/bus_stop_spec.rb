require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class BusStopTest < MiniTest::Test

  def setup
    @katy = Person.new("Katy",5)
    @mike = Person.new("Mike",6)
    @john = Person.new("John",6)
    passenger = [@katy, @mike, @john]
    @busstop = BusStop.new("station")
    @busstop2 = BusStop.new("station")
    @person = Person.new("Katy",5)
    @bus = Bus.new(2,"Aberdeen",[])
  end

  def test_add_to_queue
    @busstop.add_to_queue(@person)
    assert_equal(1, @busstop.number_in_queue)
  end

  def test_empty_queue__bus_3
    @busstop2.empty_queue()
    assert_equal(0, @busstop2.number_in_queue)

  end


end
