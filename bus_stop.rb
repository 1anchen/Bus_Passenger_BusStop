class BusStop

  def initialize(name)
    @name = name
    @queue = []
  end


  def number_in_queue
    @queue.length
  end

  def add_to_queue(passenger)
    @queue.push(passenger)
  end

  def empty_queue()
    @queue.clear
  end
end
