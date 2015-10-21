# End Goal: `say -r 500 -v Boing "#{jb.all}"`
require './lib/node'

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
    beats = string of beats
    temp = head of beats
  end

  def count
    counter = 1
    current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
        counter += 1
      end
    counter
  end



  def all
  end

  # binding.pry

  def play(value)
  end

end
