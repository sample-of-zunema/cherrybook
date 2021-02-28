# timesメソッド


sum = 0
# 処理を５回繰り返す。nには0, 1, 2, 3, 4が入る
5.times { |n| sum += n }
p sum

# 不要であればブロック引数は省略できる
sum = 0
# sumに１を加算する処理を５回繰り返す
5.times { sum += 1 }
p sum