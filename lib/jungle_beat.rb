require_relative 'linked_list'

class JungleBeat
attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(element)
    nodes = element.split(" ")
    nodes.each do |node|
      @list.append(node)
    end
    element
  end

  def count
    @list.count
  end

  def play
    system("say -r 500 -v Boing " + @list.to_string)
  end
end