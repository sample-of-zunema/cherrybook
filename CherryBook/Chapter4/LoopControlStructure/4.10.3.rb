# 繰り返し処理で使うbreakとreturnの違い


def greeting(country)
  # countryがnilならメッセージを返してメソッドを抜ける
  return 'countryを入力してください' if countruy.nil?
  
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end


# 配列の中からランダムに１つの偶数を選び、その数を１０倍にして返すメソッド
def calc_with_break
  numbers = [1, 2, 3, 4, 5, 6]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    # breakで脱出する
    break if n.even?
  end
  target * 10
end
p calc_with_break

# breakの代わりにreturnを使うとメソッドから脱出してしまって想像した挙動にならない
def calc_with_break
  numbers = [1, 2, 3, 4, 5, 6]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    # returnで脱出する
    return if n.even?
  end
  target * 10
end
p calc_with_break


# returnを呼び出した場所がメソッドの内部でなければエラーになる
[1, 2, 3].each do |n|
  puts n
  return
end
