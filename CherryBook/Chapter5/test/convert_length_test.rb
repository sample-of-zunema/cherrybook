require 'minitest/autorun'
require './lib/convert_length'

class CovertLengthTest < Minitest::Test
  def test_convert_length
    assert_equal 39.37, convert_length(1, 'm', 'in')
  end
end
