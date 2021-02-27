# 配列がブロック引数に渡される場合


dimensions = [
  # 縦, 横
  [10, 20],
  [30, 40],
  [50, 60]
]
# 面積の計算結果を格納する配列
areas = []
# ブロック引数が1個であれば、ブロック引数の値が配列になる
dimensions.each do |dimension|
  length = dimension[0]
  width = dimension[1]
  areas << length * width
end
p areas


dimensions = [
  # 縦, 横
  [10, 20],
  [30, 40],
  [50, 60]
]
# 面積の計算結果を格納する配列
areas = []
# 配列の要素分だけブロック引数を用意すると、各要素の値が別々の変数に格納される
dimensions.each do |length, width|
  areas << length * width
end
p areas


# lengthとwidthには値が渡されるが、fooとbarはnilになる
dimensions.each do |length, width, foo, bar|
  p [length, width, foo, bar]
end


# 配列の要素が3個あるのに、ブロック引数が2個しかない場合は3つ目の値が捨てられる（特別な場合以外控える）
dimensions = [
  [10, 20, 100],
  [30, 40, 200],
  [50, 60, 300]
]
# ３つの値をブロック引数に渡そうとするが、2つしかないので３つ目の値は捨てられる
dimensions.each do |length, width|
  p [length, width]
end


dimensions = [
  [10, 20],
  [30, 40],
  [50, 60]
]
dimensions.each_with_index do |length, width, i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end


dimensions = [
  [10, 20],
  [30, 40],
  [50, 60]
]
# いったん配列のまま受け取る
dimensions.each_with_index do |dimension, i|
  # 配列から縦と横の値を取り出す
  length = dimension[0]
  width = dimension[1]
  puts "length: #{length}, width: #{width}, i: #{i}"
end


dimensions = [
  [10, 20],
  [30, 40],
  [50, 60]
]
# ブロック引数を（）で囲んで、配列の要素を別々の引数として受け取る
dimensions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end
