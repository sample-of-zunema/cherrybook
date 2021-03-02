# &とシンボルを使ってもっと簡潔に書く


# このコードは
language = ['ruby', 'java', 'perl'].map { |s| s.upcase }
p language
# こう書き換えられる
language = ['ruby', 'java', 'perl'].map(&:upcase)
p language


# このコードは
integer = [1, 2, 3, 4, 5, 6].select { |n| n.odd? }
p integer
# こう書き換えられる
integer = [1, 2, 3, 4, 5, 6].select(&:odd?)
p integer


# 逆に下記のようなコードでは&:メソッド名の書き方に変換できない

# ブロックの中でメソッドではなく演算子を使っている
integer = [1, 2, 3, 4, 5, 6].select { |n| n % 3 == 0 }

# ブロック内のメソッドで引数を渡している
argument = [9, 10, 11, 12].map { |n| n.to_s(16) }

# ブロックの中で複数の文を実行している
operator = [1, 2, 3, 4].map do |n|
  m = n * 4
  m.to_s
end

