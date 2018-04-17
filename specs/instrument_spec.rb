require('minitest/autorun')
require('minitest/rg')
require_relative('../instrument')

class InstrumentTest < MiniTest::Test

  def setup
    @instrument = Instrument.new("Les Paul", "guitar")
  end

  def test_has_name
    assert_equal("Les Paul", @instrument.name)
  end

  def test_has_type
    assert_equal("guitar", @instrument.type)
  end

  def test_can_make_sound
    sound_playing = @instrument.make_sound("Stairway to Heaven")
    assert_equal("I'm playing Stairway to Heaven!", sound_playing)
  end

  def test_can_make_sound__piano
    piano = Instrument.new("Yamaha","piano")
    sound_playing = piano.make_sound("Ordinary People")
    assert_equal("Plink  Plonk ... I'm playing Ordinary People!",sound_playing)
  end
end
