# 引数がない場合は()を付けない方が主流
def greeting
  'こんにちは'
end
puts greeting

# ()を付けてもいいが、省略されることが多い
def greeting()
  'こんにちは'
end
puts greeting

# ()を省略できるが、引数がある場合は()をつけることの方が多い
def greeting country
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
puts greeting('')