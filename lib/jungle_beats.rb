require_relative 'node'
require 'pry'
# INSERT & POP
class JungleBeats

  attr_accessor :head

  def initialize(beats=nil)
    @head = nil
    make_linked_list(beats)
  end

  def make_linked_list(beats)
    if beats
      beats = beats.split
      node = Node.new(beats[0])
      if @head == nil
        @head = node
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

  def append(input)
    value_array = input.split(" ")
    value_array.each do |word|
      find_tail.next_node = Node.new(word, nil)
    end
  end

  def prepend(input)
    value_array = input.split(" ")
    value_array.each do |word|
      @head = Node.new(word, @head)
    end
  end

  def count
    current_node = @head
    if @head == nil
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
    if @head == nil
      return nil
    else
      num.times do
        tail = find_tail
        popped_item = tail.data
        popped_values << popped_item
        temp_tail = tail.data
        tail.data = nil
        temp_tail.next_node =
        current_node = @head
      end
    end
    return popped_values.join(" ")
  end

  def find(index, num_values)
    string_to_array = all.split(" ")
    array_of_found_values = string_to_array[(index+1)..(index+num_values)]
    array_of_found_values.join(" ")
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

  def insert(number, input)
    if @head == nil
      input_array = input.split(" ")
        input_array.each do |word|
          value = Node.new(word)
          @head.append(value)
        end
    else
      current_node = @head
      counter = 1
      until current_value.next_node == nil
         current_value = current_value.next_node
         counter += 1
         if counter == number
           #INSERT DATA AFTER number
         end
      end
    end
  end

  def play
    `say -r 500 -v Boing "#{all}"`
    count
  end

end
