# break


# shuffleメソッドで配列の要素をランダムに並び替える
numbers = [1, 2, 3, 4, 5].shuffle
numbers.each do |n|
  puts n
  # ５が出たら繰り返しを脱出する
  break if n == 5
end


numbers = [1, 2, 3, 4, 5].shuffle
i = 0
while i < numbers.size
  n = numbers[i]
  puts n
  break if n == 5
  i += 1
end
# ここが理解できていない


ret = 
  while true
    break
  end
p ret

ret =
  while true
    break 123
  end
p ret


# 繰り返し処理が入れ子になっている場合は、一番内側の繰り返し処理を脱出します
fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
fruits.each do |fruit|
  # 配列の数字をランダムに入れ替え、３が出たらbreakする
  numbers.shuffle.each do |n|
    puts "#{fruit}, #{n}"
    # numbersのループは脱出するが、fruitsのループは継続する
    break if n == 3
  end
end

