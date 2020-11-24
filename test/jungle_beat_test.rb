require 'minitest/autorun'
require_relative '../lib/jungle_beat'

class JungleBeatTest < Minitest::Test

  def test_it_exists
    jb = JungleBeat.new
    assert_instance_of JungleBeat, jb
  end

  def test_it_has_details
    jb = JungleBeat.new
    assert_instance_of LinkedList, jb.list
    assert_nil jb.list.head
  end
  
  def test_it_can_append_and_count
    jb = JungleBeat.new
    assert_equal "deep doo ditt", jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
    assert_equal "woo hoo shu", jb.append("woo hoo shu")
    assert_equal 6, jb.count
  end
  
  def test_it_can_play
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    jb.play
  end
end