# 配列


# 空の配列を作る
[]

# ３つの要素が格納された配列を作る
# [要素1, 要素2, 要素3]

# 空の配列を作成し、そのクラスを確認する
puts [].class

a = [1,2,3]
puts a

b = [
  4,
  5,
  6
]
puts b

# 最後の要素に,がついても文法上エラーにならない
c = [
  7,
  8,
  9,
]
puts c

# 配列は数値に限らず、どんなオブジェクトでも格納できる
d = ['apple', 'orange', 'melon']
puts d

# 異なるデータ型を格納できる
e = [1, 'apple', 2, 'orange', 3, 'melon']
puts e

puts e[0]
puts e[1]
puts e[2]

# 配列の中に配列を含めることもできる
f = [[10, 20, 30], [40, 50, 60], [70, 80, 90]]
puts f

# 配列の各要素を取得する場合は、[]と添え字（数値）を使う
puts f[0]
puts f[1]
puts f[2]


a = [1, 2, 3]
# １つ目の要素を取得
puts a[0]
# ２つ目の要素を取得
puts a[1]
# 3つ目の要素を取得
puts a[2]

# 存在しない要素を指定してもエラーにならず、nilが返ってくる
puts a[100]
p a[100]
puts a.size
puts a.length
puts f.size