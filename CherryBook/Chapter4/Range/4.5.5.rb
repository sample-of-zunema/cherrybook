# 繰り返し処理を行う


# 範囲オブジェクトを配列に変換してから繰り返し処理を行う
numbers = (1..4).to_a
sum = 0
numbers.each { |n| sum += n }
p sum

sum = 0
# 範囲オブジェクトに対して直接eachメソッドを呼び出す
(1..4).each { |n| sum += n }
p sum


numbers = []
# １から１０まで2つ飛ばしで繰り返し処理を行う
(1..10).step(2) { |n| numbers << n }
p numbers