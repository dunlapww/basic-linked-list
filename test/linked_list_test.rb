require 'minitest/autorun'
require_relative '../lib/linked_list'
require_relative '../lib/node'

class LinkedListTest < Minitest::Test
  
  def test_it_exists
    linked_list = LinkedList.new
    assert_instance_of LinkedList, linked_list
  end
  
  def test_it_initalizes_nil_head
    list = LinkedList.new
    assert_nil list.head
  end
  
  def test_it_can_append_to_head
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
    assert_nil list.head.next_node
  end
  
  def test_it_can_count_its_nodes
    list = LinkedList.new
    assert_equal 0, list.count
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_it_can_covert_nodes_to_a_string
    list = LinkedList.new
    assert_equal "",list.to_string
    list.append("doop")
    assert_equal "doop",list.to_string
  end
  
  def test_it_can_append_multiple_nodes
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
    assert_equal "deep", list.append("deep")
    assert_equal "deep", list.head.next_node.data
  end
  
  def test_it_can_count_multiple_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal 2, list.count
  end

  def test_it_can_convert_multiple_nodes_to_a_string
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.to_string
  end

end