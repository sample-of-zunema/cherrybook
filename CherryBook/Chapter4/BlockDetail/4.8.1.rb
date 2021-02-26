# 添え字付きの繰り返し処理


truits = ['apple', 'orange', 'melon']
# ブロック引数のiには0, 1, 2...と要素の添え字が入る
truits.each_with_index { |truit, i| puts "#{i}: #{truit}" }