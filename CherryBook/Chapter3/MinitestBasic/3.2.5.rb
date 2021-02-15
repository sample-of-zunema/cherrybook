require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    # nilは文字列ではないので、upcaseメソッドを呼ぶことはできない
    assert_equal 'RUBY', nil.upcase
  end
end