# ?で終わるメソッド

# 空文字列であればtrue、そうでなければfalse
puts ''.empty?
puts 'abc'.empty?

# 引数の文字列が含まれていればtrue、そうでなければfalse
puts 'watch'.include?('at')
puts 'watch'.include?('in')

# 奇数ならtrue、偶数ならfalse
puts 1.odd?
puts 2.odd?

# 偶数ならtrue、奇数ならfalse
puts 1.even?
puts 2.even?

# オブジェクトがnilであるならばtrue、そうでなければfalse
puts nil.nil?
puts 'abc'.nil?
puts 1.nil?


# 3の倍数ならtrue、それ以外はfalseを返す
def multiple_of_three?(n)
  n % 3 == 0
end
puts multiple_of_three?(2)
puts multiple_of_three?(3)
puts multiple_of_three?(4)
puts multiple_of_three?(5)
puts multiple_of_three?(6)