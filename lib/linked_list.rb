class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(element)
    if @head.nil?
      @head = Node.new(element) if @head.nil? 
      return @head.data
    else
      last_node = @head
      until last_node.next_node.nil? do
        last_node = last_node.next_node
      end
      new_node = Node.new(element)
      last_node.next_node = new_node
      return new_node.data
    end
  end

  def count
    return 0 if @head.nil?
    node = @head
    counter = 0
    loop do
      counter += 1
      break if node.next_node.nil?
      node = node.next_node
    end
    counter
  end

  def to_string
    return "" if @head.nil?
    node = @head
    str = ""
    loop do
      str << node.data.to_s
      break if node.next_node.nil?
      str << " "
      node = node.next_node
    end
    str
  end

  def prepend(element)
    new_head = Node.new(element)
    new_head.next_node = @head
    @head = new_head
    @head.data
  end

  def insert(position, element)
    return prepend(element) if position == 0
    new_node = Node.new(element)
    node_before_insertion = @head
    (position - 1).times do
      node_before_insertion = node_before_insertion.next_node
    end
    new_node.next_node = node_before_insertion.next_node
    node_before_insertion.next_node = new_node
    new_node.data
  end

  def find(start_position, num_of_elements)
    start_node = @head
    start_position.times do
      return "Error: start position outside linkedlist" if start_node.next_node.nil?
      start_node = start_node.next_node
    end
    return "" if num_of_elements == 0
    
    str = start_node.data.to_s
    return str if start_node.next_node.nil?

    node = start_node.next_node
    (num_of_elements - 1).times do
      str << " " + node.data
      return str if node.next_node.nil?
      node = node.next_node
    end
    str
  end

  def pop
    node = @head
    previous_node = nil
    until node.next_node.nil? do
      previous_node = node
      node = node.next_node
    end
    previous_node.next_node = nil
    node.data
  end

  def includes?(element)
    node = @head
    until node.next_node.nil?
      return true if node.data == element
      node = node.next_node
    end
    false
  end
end