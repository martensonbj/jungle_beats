require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_the_list_is_empty
    n = Node.new(nil)
    assert_equal nil, n.data
  end

  def test_there_is_one_node
    n = Node.new("dee")
    assert_equal "dee", n.data
    assert_equal nil, n.next_node
  end

  def test_there_are_two_nodes
    n = Node.new("dee")
    assert "dee", n.data
    n1 = Node.new("tee")
    assert "dee", n.data
    assert "tee", n1.data
  end

  def test_there_are_two_linked_nodes
    n = Node.new("dee")
    n1 = Node.new("tee")
    n.next_node = n1
    assert "tee", n1.data
  end

  def test_there_are_three_linking_nodes
    n = Node.new("dee")
    assert_equal "dee", n.data
    assert_equal nil, n.next_node

    n1 = Node.new("tee")
    n.next_node = n1
    assert_equal "tee", n.next_node.data

    n2 = Node.new("bam")
    n1.next_node = n2
    assert_equal nil, n2.next_node
    assert_equal "bam", n1.next_node.data
  end

end
