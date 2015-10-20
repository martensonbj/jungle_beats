require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beats'

class JungleBeatsTest < Minitest::Test

  def test_for_empty_beats
    jb = JungleBeats.new
    assert_equal 0, jb.count.to_i
  end

  def test_head_is_nil_when_list_is_empty
    jb = JungleBeats.new
    assert_equal nil, @head
  end

  def test_there_is_a_head
    jb = JungleBeats.new
    jb.append("Head")
    assert_equal "Head", jb.head.data
  end

  def test_count_of_linked_list_is_1
    jb = JungleBeats.new
    jb.append("Head")
    assert_equal 1, jb.count
  end

  def test_the_head_does_not_point_to_nil
    skip
    jb = JungleBeats.new
    assert 0 > jb.count
  end

  def test_all_for_one_beat
    skip
    jb = JungleBeats.new
    jb.append("tee")
    assert_equal "tee", jb.all
  end

  def test_count_for_empty_beats
    skip
    jb = JungleBeats.new
    assert_equal 0, jb.count
  end

  def test_count_for_1_beat
    skip
    jb = JungleBeats.new
    jb.append ("dee")
    assert_equal 1 , jb.count
  end

  def test_count_for_4_beats
    skip
    jb = JungleBeats.new
    jb.append("dee dee dee")
    assert_equal 4, jb.count
  end

  def test_it_adds_a_node_to_the_end
    skip
    jb = JungleBeats.new
    jb.all = ("")
  end

  def test_it_returns_nil_when_empty_array_popped
    skip
    jb = JungleBeats.new
    jb.count == 0
    assert_equal nil, jb.pop
  end

  def test_it_plays
    skip
    jb = JungleBeats.new
    jb.all = ("beep, bop, boop")
    assert_equal `say -r 500 -v Boing "#{jb.all}"`, jb.play
  end

end
