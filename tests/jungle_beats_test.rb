require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beats'
require 'pry'

class JungleBeatsTest < Minitest::Test

# GENERAL
  def test_for_empty_beats
    jb = JungleBeats.new
    assert_equal nil, @head
  end

  def test_there_is_a_head
    jb = JungleBeats.new("tee")
    refute nil, @head
  end

  def test_the_head_is_the_tail_with_one_node
    jb = JungleBeats.new("Node1")
    head = @head
    tail = jb.find_tail
    assert_equal "Node1", jb.head.data
    assert_equal "Node1", jb.find_tail.data
  end

# APPEND
  def test_you_can_append_a_node
    skip
    jb = JungleBeats.new("Head_Node")
    jb.append("Node1")
    assert_equal "Node1", jb.find_tail.data
  end

  def test_you_can_append_another_node
    skip
    jb = JungleBeats.new("Head_Node")
    jb.append("Node1")
    assert_equal "Node1", jb.head.next_node.data
    jb.append("Node2")
    assert_equal "Node2",  jb.find_tail.data
  end

# COUNT
  def test_there_are_0_beats
    skip
    jb = JungleBeats.new
    assert_equal 0, jb.count
  end

  def test_there_is_one_beat
    skip
    jb = JungleBeats.new("tee")
    assert_equal 1, jb.count
  end

  def test_there_are_2_beats
    skip
    jb = JungleBeats.new("tee")
    jb.append("bam")
    assert_equal 2, jb.count
  end

# ALL
  def test_all_for_one_beat
    skip
    jb = JungleBeats.new("tee")
    assert_equal "tee", jb.all
  end

  def test_all_for_multiple_beats
    skip
    jb = JungleBeats.new("tee")
    jb.append("bam")
    jb.append("boom")
    assert_equal ("tee bam boom"), jb.all
  end

# PREPEND
  def test_it_prepends_a_node
    skip
    jb = JungleBeats.new("tee")
    jb.prepend("boop")
    assert_equal "boop", jb.head.data
  end

  def test_it_prepends_another_node
    skip
    jb = JungleBeats.new("tee")
    jb.prepend("boop")
    jb.prepend("bam")
    assert_equal "bam", jb.head.data
  end

# FIND
  def test_it_finds_a_value
    skip
    jb = JungleBeats.new("boom")
    jb.append("tee")
    jb.append("bam")
    assert_equal ["boom", "tee", "bam"], jb.all
    assert_equal "bam", jb.find(1, 1)
  end

  def test_it_finds_another_value
    skip
  end

# INCLUDE
  def test_it_includes_a_value
    skip
    jb = JungleBeats.new("boom")
    jb.append("tee")
    jb.append("bam")
    assert_equal ("boom tee bam"), jb.all
    assert_equal true, jb.include?("tee")
  end

  def test_it_includes_another_value
    skip
    jb = JungleBeats.new("boom")
    jb.append("tee")
    jb.append("bam")
    jb.append("boom")
    jb.append("boom")
    # assert_equal true, jb.include?("bam")
    assert_equal true, jb.include?("boom")
  end

# POP
  def test_it_pops_the_last_element
    skip
    jb = JungleBeats.new("boom")
    jb.append("tee")
    jb.append("bam")
    assert_equal ("boom tee bam"), jb.all
    assert_equal "bam", jb.pop(2)
  end

# TESTS THAT REQUIRE SPLIT ELEMENTS
  def test_it_pops_multiple_elements
    skip
    jb = JungleBeats.new("boom")
    jb.append("tee")
    jb.append("bam")
    jb.append("pop")
    assert_equal ("boom tee bam pop"), jb.all
    assert_equal ("bam pop"), jb.pop(2)
  end

  def test_count_for_4_beats
    skip
    jb = JungleBeats.new
    jb.append("dee dee dee")
    assert_equal 4, jb.count
  end

  def test_it_returns_nil_when_empty_array_popped
    skip
    jb = JungleBeats.new
    assert_equal nil, jb.pop
  end

  def test_it_plays
    skip
    jb = JungleBeats.new("beep bop boop")
    assert_equal "`say -r 500 -v Boing 'beep bop boop'`", jb.play("beep bop boop")
  end

end
