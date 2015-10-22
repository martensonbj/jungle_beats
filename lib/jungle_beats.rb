# End Goal: `say -r 500 -v Boing "#{jb.all}"`
require_relative 'node'
require 'pry'

class JungleBeats

  attr_accessor :head

  def initialize(beats=nil)
    @head = Node.new(beats)
    make_linked_list(beats)
  end

  def make_linked_list(beats)
    if beats
      beats = beats.split
      node = Node.new()
      if @head == nil
        @head= node
        beats.shift
        node = @head
      else
        @data = node
        beats.shift
        node = @data
      end
      beats.each do |word|
        node.next_node = Node.new(word)
        node = node.next_node
      end
    end
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
    if @head.data == nil
      counter = 0
    else
      counter = 1
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
        counter += 1
      end
    end
    counter
  end

  def all
    current_node = @head
    display_all = []
    while current_node != nil
      display_all << current_node.data
      current_node = current_node.next_node
    end
    display_all.join(" ")
  end

  def pop(num=1)
    current_node = @head
    popped_values = []
    if count == 0
      return nil
    else
      temp_tail = find_tail
      popped_item = temp_tail.data
      popped_values << popped_item
      temp_tail.data = nil
      current_node = @head
    end
    return popped_value.join(" ")
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
    all[(index+1)..(index+num_values)]

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

  # def insert(number, input)
  #   current_value = @head
  #   counter = 1
  #   # (MAKE LINK LIST(input))
  # end

  def play(mad_beats)
    mad_beats = all
    return "`say -r 500 -v Boing #{mad_beats}`"
  end

end

# split_string.each do |x|
#   current_node.link = Node.new(x)
#   current_node = current_node.link
# end

# beat = JungleBeats.new("beep")
# beat.append("bop")
# beat.append("bop")
# beat.append("bop")
# beat.append("bop")
# beat.prepend("bam")
# beat.all
# beat.find(1, 2)
# beat.count
# beat.play("beep boop boop bam")
