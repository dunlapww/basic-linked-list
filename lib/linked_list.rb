class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(element)
    @head = Node.new(element)
    @head.data
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
      node = node.next_node
    end
    str
  end
end