class Band

  def initialize(musicians)
    @musicians = musicians
  end


  def perform(song)
    performance = []
    for musician in @musicians
      performance << musician.play_song(song)
    end
    return performance
  end

end
