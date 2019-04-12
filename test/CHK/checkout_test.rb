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
    assert_equal 35, Checkout.new.checkout("I")
    assert_equal 60, Checkout.new.checkout("J")
    assert_equal 230, Checkout.new.checkout("KKK")
    assert_equal 90, Checkout.new.checkout("L")
    assert_equal 15, Checkout.new.checkout("M")
    assert_equal 40, Checkout.new.checkout("N")
    assert_equal 10, Checkout.new.checkout("O")
    assert_equal 250, Checkout.new.checkout("PPPPPP")
    assert_equal 110, Checkout.new.checkout("QQQQ")
    assert_equal 50, Checkout.new.checkout("R")
    assert_equal 150, Checkout.new.checkout("RRRQ")
    assert_equal 30, Checkout.new.checkout("S")
    assert_equal 20, Checkout.new.checkout("T")
    assert_equal 160, Checkout.new.checkout("UUUUU")
    assert_equal 260, Checkout.new.checkout("VVVVVV")
    assert_equal 20, Checkout.new.checkout("W")
    assert_equal 90, Checkout.new.checkout("X")
    assert_equal 10, Checkout.new.checkout("Y")
    assert_equal 50, Checkout.new.checkout("Z")
    assert_equal 350, Checkout.new.checkout("VVVVVVVV")
    assert_equal 20, Checkout.new.checkout("ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ")
    
  end
end






