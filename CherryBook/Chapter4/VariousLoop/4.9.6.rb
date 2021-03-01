# loopメソッド


while true
  # 無限ループ用の処理
end

loop do
  # 無限ループ用の処理
end

numbers = [1, 2, 3, 4, 5]
loop do
  # sampleメソッドでランダムに要素を１つ取得する
  n = numbers.sample
  puts n
  break if n == 5
end


while true
  n = numbers.sample
  puts n
  break if n == 5
end