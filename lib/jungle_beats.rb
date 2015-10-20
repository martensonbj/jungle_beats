# End Goal: `say -r 500 -v Boing "#{jb.all}"`
require './lib/node'

class JungleBeats

  attr_accessor :head, :count

  def initialize
    @head = nil
    @count = 0
  end

# binding.pry
# TO APPEND:
# If head is nil, set value to head
# If head is not nil, FIND TAIL
# Set new node to be node-1.next_node

  def append(value)
    if @head == nil
      @head = Node.new(value)
      @count += 1
    else @head.next_node = nil
        node = Node.new(value)
        @head.next_node = node
        @count += 1
    end
  end

  def to_s(input)
    # MAKE INPUTS STOP RETURNING NIL
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
