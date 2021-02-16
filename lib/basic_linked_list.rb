require_relative 'node'

class BasicLinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(element)
    new_node = Node.new(element)
    @head.nil? ? (@head = new_node) : (last_node.next_node = new_node)
    new_node.data
  end
    
  def last_node(node = @head)
    return node if node.nil? 
    return node if node.next_node.nil?
    node = node.next_node
    last_node(node)
  end

  def count(node = @head, counter = 0)
    return counter if node.nil?
    counter += 1
    return counter if node.next_node.nil?
    node = node.next_node
    count(node, counter)
  end

  def to_string(node = @head, str = "")
    return str if node.nil?
    node == @head ? (str << node.data.to_s) : (str << " " + node.data.to_s)
    return str if node.next_node.nil?
    node = node.next_node
    to_string(node,str)
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