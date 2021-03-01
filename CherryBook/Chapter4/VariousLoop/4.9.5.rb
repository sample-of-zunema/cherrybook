# for文


# for 変数 in 配列やハッシュ
  # 繰り返し処理
# end

numbers = [1, 2, 3, 4]
sum = 0
for n in numbers
  sum += n
end
p sum

# doを入れて１行で書くことも可能
sum = 0
for n in numbers do sum += n end
p sum

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
p sum


numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
p sum


numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n + 10 : n
  sum += sum_value
end
# ブロック引数やブロック内で作成した変数はブロックの外では参照できない
# p n
# p sum_value
 
 sum = 0
 for n in numbers
   sum_value = n.even? ? n * 10 : n
   sum += sum_value
 end
# for文の中で作成された変数はfor文の外でも参照できる
# p　n
p sum_value