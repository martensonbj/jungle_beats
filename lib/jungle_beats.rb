# End Goal: `say -r 500 -v Boing "#{jb.all}"`
require '/Users/bmartenson/turing/1module/projects/jungle_beats/lib/node.rb'

class JungleBeats

  attr_accessor :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(value)
    @head = Node.new(value)
    @count += 1
  end
  binding.pry

  def find_tail
    # Is head nil?
    # If there is a head, set current at head, set pointer at +1
    # Is the next node nil?
    # If next node is nil, head = tail
    # If next node is not nil, move pointer +1, current +1
    # until next node is nil, move counter +1
    # Once next node is nil, node = tail
    if @head.nil? == false
    until Node.next_node == nil
      move counter to next node
    end
    else
      node = tail
    end
  end

  def prepend(value)
  end

  def all
  end

  def count
  end

  def play(value)
  end

end
