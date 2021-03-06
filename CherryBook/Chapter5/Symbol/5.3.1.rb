# シンボルと文字列の違い


a = :apple
p a.class

b = 'apple'
p b.class


# 文字列よりもシンボルの方が高速に比較できる
p 'apple' == 'apple'
p :apple == :apple


# シンボルは「同じシンボルであれば全く同じオブジェクトである」という特徴がある
c = :apple
d = :apple
e = :apple

f = 'apple'
g = 'apple'
h = 'apple'

p c.object_id
p d.object_id
p e.object_id

p f.object_id
p g.object_id
p h.object_id


# 文字列は破壊的な変更が可能
string = 'apple'
p string
string.upcase!
p string

# シンボルはイミュータブルなので、破壊的な変更は不可能
symbol = :apple
p symbol
symbol.upcase!
p symbol