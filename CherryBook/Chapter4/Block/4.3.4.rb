# ブロック引数とブロック内の変数


numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end

# ブロック引数の名前はなんでもいい
numbers.each do |i|
  sum += i
end
p sum

numbers.each do |number|
  sum += number
end
p sum

numbers.each do |element|
  sum += element
end
p sum

# ブロック引数を使わない場合は、ブロック引数自体を省略できる
numbers.each do
  sum += 1
end
p sum

# 偶数のみ値を１０倍にしてから加算するコード
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p sum

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p sum