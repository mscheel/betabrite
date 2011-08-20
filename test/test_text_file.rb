class TextFileTest < Test::Unit::TestCase
  include BetaBrite::Files

  def test_const_dsl
    tf = Text.new {
      roll_down()
      middle()
    }

    assert_equal(Text::Position::MIDDLE, tf.position)
    assert_equal(Text::Mode::ROLL_DOWN, tf.mode)
  end
end
