# noinspection RubyResolve,RubyResolve
require_relative '../test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'CHK'

class ClientTest < Minitest::Test

  def test_checkout
    assert_equal -1 , Checkout.new.checkout("abc")
    assert_equal 115, Checkout.new.checkout("ABCD")
    assert_equal  255  ,Checkout.new.checkout("AAAABBB")
    assert_equal 155 , Checkout.new.checkout("ABCDE")
    assert_equal 80 , Checkout.new.checkout("EEB")
    assert_equal 110, Checkout.new.checkout("EEBB")
    assert_equal 200, Checkout.new.checkout("AAAAA")
    assert_equal 250, Checkout.new.checkout("AAAAAA")
    assert_equal 300, Checkout.new.checkout("AAAAAAA")
    assert_equal 80, Checkout.new.checkout("EE")
    assert_equal 20, Checkout.new.checkout("FF")
    assert_equal 20, Checkout.new.checkout("FFF")
    assert_equal 60, Checkout.new.checkout("FFFFFFFF")
    assert_equal 20, Checkout.new.checkout("G")
    assert_equal 10, Checkout.new.checkout("H")
    assert_equal 135, Checkout.new.checkout("HHHHHHHHHHHHHHHH")


  end
end



