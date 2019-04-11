# noinspection RubyResolve,RubyResolve
require_relative '../test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'CHK'

class ClientTest < Minitest::Test

  def test_checkout
    assert_equal -1 , Checkout.new.checkout("abc")
    assert_equal 115, Checkout.new.checkout("ABCD")
  end
end


