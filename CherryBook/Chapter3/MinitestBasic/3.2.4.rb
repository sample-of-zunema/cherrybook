require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    # わざとcapitalizeメソッド（最初の１文字だけを大文字にするメソッド）を呼ぶ
    assert_equal 'RUBY', 'ruby'.capitalize
  end
end
