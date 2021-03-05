# ハッシュの同値比較、要素数の取得、要素の削除


a = { 'x' => 1, 'y' => 2, 'z' => 3 }

# 全てのキーと値が同じであればtrue
b = { 'x' => 1, 'y' => 2, 'z' => 3 }
p a == b

# 並び順が異なっていてもキーと値が同じならtrue
c = {'x' => 1, 'z' => 3, 'y' => 2 }
p a == c

# キー'x'の値が異なるのでfalse
d = { 'x' => 10, 'y' => 2, 'z' => 3 }
p a == d


# sizeメソッドを使うとハッシュの要素の個数を調べられる
p a.size

e = { 'x' => 1, 'y' => 2, 'z' => 3 }.size
p e


# deleteメソッドを使うと指定したキーに対応する要素を削除する
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
p currencies
p currencies.delete('japan')
p currencies


currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
# 削除しようとしたキーが見つからない時はnilが返る
p currencies.delete('italy')

# ブロックを渡すとキーが見つからない時の戻り値を作成できる
p currencies.delete('italy') { |key| "Not found: #{key}" }