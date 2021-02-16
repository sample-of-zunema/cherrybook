# 配列を使った多重代入


# 配列を使って多重代入する
a, b = [1, 2]
p a
p b

# 右辺の数が少ない場合はnilが入る
c, d = [10]
p c
p d

# 右辺の数が多い場合ははみ出した値が切り捨てられる
e, f = [100, 200, 300]
p e
p f


# divmodは商と余りを配列で返す
p 14.divmod(3)

# 戻り値を配列のまま受け取る
quo_rem = 14.divmod(3)
p quo_rem
p "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"

# 多重代入で別々の変数として受け取る
quotient, remainder = 14.divmod(3)
p "商#{quotient}, 余り#{remainder}"
p "商 #{quotient}, 余り #{remainder}"
p "商=#{quotient}, 余り=#{remainder}"