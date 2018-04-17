require('minitest/autorun')
require('minitest/rg')
require_relative('../musician')
require_relative('../instrument')
require_relative('../band')

class BandTest < MiniTest::Test

  def setup
    piano = Instrument.new("Steinway Model Z", "piano")
    bass = Instrument.new("Hofner", "bass guitar")
    guitar = Instrument.new("Gretsch", "guitar")
    drums = Instrument.new("Ludwig", "drums")

    john = Musician.new("John Lennon", piano)
    paul = Musician.new("Paul McCartney", bass)
    george = Musician.new("George Harrison", guitar)
    ringo = Musician.new("Ringo Starr", drums)

    @beatles = Band.new([john, paul, george, ringo])
  end

  def test_band_can_play_song
    expected = [
         "Plink  Plonk ... I'm playing Hey Jude!",
         "I'm playing Hey Jude!",
         "I'm playing Hey Jude!",
         "I'm playing Hey Jude!",
    ]
    actual = @beatles.perform("Hey Jude")
    assert_equal(expected,actual)

  end
end
