require 'minitest/autorun'
require 'minitest/pride'
require '/Users/bmartenson/turing/1module/projects/jungle_beats/lib/node.rb'

class NodeTest < Minitest::Test

  def test_node_basics
    n = Node.new
    assert_equal nil, n.data
  end

  def test_the_node_points_to_something
    n = Node.new
    if @count > 1
    refute n.pointer == nil
  end

  def test_node_for_one_item
    n.data = "dee"
    assert_equal "dee", n.data
  end

  def test_linking_nodes
    n = Node.new
    assert_equal nil, n.next_node
    neighbor = Node.new
    neighbor.data = "pizza"
    n.next_node = neighbor
    assert_equal "pizza", n.next_node.data
  end

end
