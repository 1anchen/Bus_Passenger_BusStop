class Bus

  def initialize(route, destination, passenger)

    @route = route
    @destination = destination
    @passenger = passenger

   end

   def drive
      return "Brum Brum"
   end

   def number_of_passenger()
     return @passenger.length
   end


   def pick_up(passenger)
    @passenger.push(passenger)
   end

   def drop_off(passenger)
     # self.pick_up(passenger)
     @passenger.delete(passenger)
   end

   def empty_bus
     # self.pick_up(passenger)
     @passenger.clear
   end
end
