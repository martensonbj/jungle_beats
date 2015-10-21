# End Goal: `say -r 500 -v Boing "#{jb.all}"`
require_relative 'node'
require 'pry'

class JungleBeats

  attr_accessor :head

  def initialize(beats=nil)
    @head = Node.new(beats)
  end

  def find_tail
    current_node = @head
    until current_node.next_node == nil
      current_node = current_node.next_node
    end
    current_node
  end

  def append(value)
    new_node = Node.new(value)
    find_tail.next_node = new_node
  end

  def prepend(value)
    # node_to_prepend = Node.new(value)
    # node_to_prepend.next_node = @head
    # @head = node_to_prepend
    @head = Node.new(value, @head)
  end

  def count
    counter = 1
    current_node = @head
    tail = find_tail
    until current_node.next_node == tail
      current_node = current_node.next_node
      counter += 1
    end
    counter + 1
  end

  def all
    current_node = @head
    display_all = []
    while current_node != nil
      display_all << current_node.data
      current_node = current_node.next_node
    end
    display_all
  end

  def pop
    if count == 0
      return nil
    else
    tail = find_tail
    popped_value = tail.data
    tail.data = nil
    new_tail = find_tail
    return popped_value
    end
  end

  def find(index, num_values)
    # counter = 0
    # current_node = @head
    # until current_node.next_node == nil
    #   counter += 1
    #   if counter == index
    #     print given number of nodes
    #   else
    #     "Node not in list"
    #   end
    # end
    all.find do |index, num_values|
      
    end
  end

  def include?(value)
    current_node = @head
    while current_node != nil
      if current_node.data == value
        return true
      else
        current_node = current_node.next_node
      end
    end
  end

  def insert
  end

  def play(value)
  end

end

beat = JungleBeats.new("beep")
beat.append("bop")
beat.append("bop")
beat.append("bop")
beat.append("bop")
beat.prepend("bam")
beat.all
beat.count
