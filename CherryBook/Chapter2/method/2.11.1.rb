# デフォルト値付きの引数

def greeting(country)
  if country == 'japan'
    'こんにちは'
  else
    'Hello'
  end
end

# 引数がない
# puts greeting

# 引数がちょうど
puts greeting('us')

# 引数が多い
# puts greeting('us', 'japan')


# 引数なしの場合にはcountryに'japan'を設定する
def greeting(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'Hello'
  end
end

puts greeting
puts greeting('us')


def default_args(a,b,c = 0, d = 0)
  "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end
puts default_args(1,2)
puts default_args(1,2,3)
puts default_args(1,2,3,4)


def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'BAR'
end

foo