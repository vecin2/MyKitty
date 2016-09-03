require "test/unit"
require_relative "../../../app/models/Kitty/kitty"
class TestKitty < Test::Unit::TestCase
  def testInitialize
    kitty = Kitty.new("Alpes")
    assert_equal("Alpes",kitty.name)
  end
end