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
end