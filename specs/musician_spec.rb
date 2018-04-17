require('minitest/autorun')
require('minitest/rg')
require_relative('../musician')
require_relative('../instrument')

class MusicianTest < MiniTest::Test

  def setup
    strat = Instrument.new("Fender Strat", "guitar")
    grand_piano = Instrument.new("Bechstien", "piano")
    @musician1 = Musician.new("Jimi Hendrix", strat)
    @musician2 = Musician.new("Freddie Mercury", grand_piano)
  end

  def test_musician_has_name
    assert_equal("Jimi Hendrix",@musician1.name)

  end


  def test_musician_can_play_song
    song_playing = @musician1.play_song("Hey Joe")
    assert_equal("I'm playing Hey Joe!",song_playing)
  end

 def test_musicaian_can_play_song_on_piano
   song_playing = @musician2.play_song("Bohemian Rhapsody")
   assert_equal("Plink  Plonk ... I'm playing Bohemian Rhapsody!",song_playing)
 end
end
