# 添え字を０以外の数値から開始させる


fruits = ['apple', 'orange', 'melon']

# eaxhで繰り返しつつ、１から始まる添え字を取得する
fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}" }

# mapで処理しつつ、１０から始まる添え字を取得する
p fruits.map.with_index(10) { |fruit, i| "#{i}: #{fruit}" }
