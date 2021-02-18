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
  # sum_valueはブロック内で初めて登場した変数なので、ブロック内でのみ有効
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
# ブロックの外に出ると、sum_valueは参照できない
# p sum_value

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  # sumはブロックの外で作成されたので、ブロック外でも参照可能
  sum += sum_value
end
p sum

# ブロック引数の名前をブロックの外にある変数と同じ名前にすると、ブロック内のではブロック引数の値が優先して参照される。（シャドーイング）けれどこれは読み手を混乱させるため意図的に同じ名前を使うのは避けるようにする。
numbers = [1, 2, 3, 4]
sum = 0
sum_value = 100
numbers.each do |sum_value|
  sum += sum_value
end
p sum