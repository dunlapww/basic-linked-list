require 'minitest/autorun'
require_relative '../lib/jungle_beat'

class JungleBeatTest < Minitest::Test

  def test_it_exists
    jb = JungleBeat.new
    assert_instance_of JungleBeat, jb
  end
end