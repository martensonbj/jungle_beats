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
    assert_equal "Node1", jb.head.data
    assert_equal "Node1", jb.find_tail.data
  end

# APPEND
  def test_you_can_append_a_node
    jb = JungleBeats.new("beep")
    assert_equal 1, jb.count
    jb.append("boop")
    assert_equal "boop", jb.find_tail.data
    assert_equal 2, jb.count
    assert_equal "boop", jb.find_tail.data
  end

  def test_you_can_append_another_node
    jb = JungleBeats.new("beep")
    assert_equal 1, jb.count
    jb.append("boop")
    assert_equal 2, jb.count
    jb.append("blab")
    assert_equal 3, jb.count
    assert_equal "blab",  jb.find_tail.data
  end

  def test_you_can_append_multiple_nodes
    jb = JungleBeats.new("beep boop")
    jb.append("bip balama balama")
    assert_equal 5, jb.count
  end

# COUNT
  def test_there_are_0_beats
    jb = JungleBeats.new
    assert_equal 0, jb.count
  end

  def test_there_is_one_beat
    jb = JungleBeats.new("tee")
    assert_equal 1, jb.count
  end

  def test_there_are_2_beats
    jb = JungleBeats.new("tee bam")
    assert_equal 2, jb.count
  end

# ALL
  def test_all_for_one_beat
    jb = JungleBeats.new("tee")
    assert_equal "tee", jb.all
  end

  def test_all_for_multiple_beats
    jb = JungleBeats.new("tee")
    jb.append("bam")
    jb.append("boom")
    assert_equal ("tee bam boom"), jb.all
  end

# PREPEND
  def test_it_prepends_a_node
    jb = JungleBeats.new("tee")
    jb.prepend("boop")
    assert_equal "boop", jb.head.data
    assert_equal 2, jb.count
  end

  def test_it_prepends_another_node
    jb = JungleBeats.new("tee")
    jb.prepend("boop")
    jb.prepend("bam")
    assert_equal "bam", jb.head.data
    assert_equal 3, jb.count
  end

# FIND
  def test_it_finds_a_value
    jb = JungleBeats.new("boom tee bip bip boop")
    assert_equal "bip", jb.find(1, 1)
  end

  def test_it_finds_multiple_values
    jb = JungleBeats.new("boom tee bip bip boop")
    assert_equal "bip boop", jb.find(2, 2)
  end

# INCLUDE
  def test_it_includes_a_value
    jb = JungleBeats.new("boom")
    assert jb.include?("boom")
  end

  def test_it_includes_another_value
    jb = JungleBeats.new("boom bam beep hi")
    assert jb.include?("beep")
  end

  def test_it_does_not_include_a_value
    jb = JungleBeats.new("boom bam beep hi")
    refute jb.include?("bip")
  end

  # INSERT
  def test_it_inserts_one_value
    skip
    jb = JungleBeats.new("boom bam")
    assert_equal ("boom blip bam"), jb.insert(1, "blip")
  end

# POP
  def test_it_pops_the_last_element
    jb = JungleBeats.new("boom tee bam")
    assert_equal "bam", jb.pop()
  end

# ADDITIONAL
  def test_it_pops_multiple_elements
    skip
    jb = JungleBeats.new("boom tee bam pop")
    assert_equal ("bam pop"), jb.pop(2)
  end

  def test_count_for_4_beats
    jb = JungleBeats.new("dee dee dee dee")
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
    assert_equal `say -r 500 -v Boing 'beep bop boop'`, jb.play
  end

end
