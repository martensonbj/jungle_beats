require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beats'

class JungleBeatsTest < Minitest::Test

  def test_for_empty_beats
    jb = JungleBeats.new
    assert_equal nil, jb.head.data
  end

  def test_head_is_nil_when_list_is_empty
    jb = JungleBeats.new
    assert_equal nil, jb.head.data
  end

  def test_there_is_a_head
    jb = JungleBeats.new("Node1")
    assert_equal "Node1", jb.head.data
  end

  def test_the_head_is_the_tail_with_one_node
    jb = JungleBeats.new("Node1")
    head = jb.head.data
    tail = jb.find_tail
    assert_equal "Node1", head
    assert_equal "Node1", jb.find_tail.data
  end

  def test_you_can_append_a_node
    jb = JungleBeats.new("Head_Node")
    jb.append("Node1")
    assert_equal "Node1", jb.head.next_node.data
  end

  def test_you_can_append_another_node
    jb = JungleBeats.new("Head_Node")
    jb.append("Node1")
    assert_equal "Node1", jb.head.next_node.data
    jb.append("Node2")
    assert_equal "Node2",  jb.find_tail.data
  end

  def test_there_is_one_beat
    jb = JungleBeats.new("tee")
    assert_equal 1, jb.count
  end

  def test_there_are_2_beats
    jb = JungleBeats.new("tee")
    jb.append("bam")
    assert_equal 2, jb.count
  end

  def test_all_for_one_beat
    skip
    jb = JungleBeats.new
    jb.append("tee")
    assert_equal "tee", jb.all
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
