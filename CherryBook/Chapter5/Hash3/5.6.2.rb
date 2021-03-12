# ＊＊でハッシュを展開させる


h = { us: 'dollar', india: 'rupee' }
# 変数hのキーと値を＊＊で展開させる
a = { japan: 'yen', **h }
p a

# ＊＊をつけない場合は構文エラーになる
# b = { japan: 'yen', h }
# p b

# 上のメソッドは＊＊の代わりにmergeメソッドを使っても同じ結果になる
c = { japan: 'yen' }.merge(h)
p c