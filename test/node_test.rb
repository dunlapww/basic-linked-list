require 'minitest/autorun'
require_relative '../lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new("plop")
    assert_instance_of Node, node
  end
  
  def test_it_can_return_the_arg
    node = Node.new("plop")
    assert_equal "plop", node.data
  end
  
  def test_next_node_returns_nil
    node = Node.new("plop")
    assert_nil node.next_node
  end
end