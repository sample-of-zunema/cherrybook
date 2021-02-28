# while文とuntil文


# while 条件式（真であれば実行）
  # 繰り返したい処理
# end

# 配列の要素が５つになるまで値を追加するwhile文
a = []
while a.size < 5
  a << 1
end
p a

# 条件式の後ろにdoを入れると１行で書ける
a = []
while a.size < 5 do a << 1 end
p a

# しかし、１行で書くのであれば修飾子としてwhile文を後ろにおいたほうがスッキリする
a = []
a << 1 while a.size < 5
p a


# どんな条件でも最低１回は実行したい、という場合はbegin ... endで囲んでからwhile文を書く
a = []

while false
  # このコードは常に条件が偽になるので実行されない
  a << 1
end
p a

# begin ... endで囲むとどんな条件でも最低１回は実行される
begin
  a << 1
end while false
p a


# while文の逆で、条件式が偽である間、処理を繰り返すuntil文もある
# until 条件式（偽であれば実行）
  # 繰り返したい処理
# end

# 配列の要素数が３以下になるまで配列の要素を後ろから削除していくコード例
a = [10, 20, 30, 40, 50]
until a.size <= 3
  a.delete_at(-1)
end
p a

# ※ while文やuntil文を書く場合は無限ループに気をつける
