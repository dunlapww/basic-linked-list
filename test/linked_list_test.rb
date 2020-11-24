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
  
  def test_it_can_prepend_and_insert
    list = LinkedList.new
    assert_equal "plop", list.append("plop")
    assert_equal "plop", list.to_string
    assert_equal "suu", list.append("suu")
    assert_equal "dop", list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
    assert_equal 3, list.count
    assert_equal "woo", list.insert(1, "woo")
    assert_equal "dop woo plop suu", list.to_string
  end
  
  def test_it_can_find
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "deep woo shi shu blop", list.to_string
    assert_equal "shi", list.find(2, 1)
    assert_equal "woo shi shu", list.find(1, 3)
    result = "Error: start position outside linkedlist"
    assert_equal result, list.find(7,2)
    assert_equal "shi shu blop", list.find(2,4)
  end
  
  def test_it_can_pop
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "deep woo shi shu blop", list.to_string
    assert_equal "blop", list.pop
    assert_equal "shu", list.pop
    assert_equal "deep woo shi", list.to_string
  end

end