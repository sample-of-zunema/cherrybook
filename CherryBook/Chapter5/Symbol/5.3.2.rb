# シンボルの特徴とおもな用途


# # 文字列をハッシュのキーにする
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'ruppe' }
# 文字列を使って値を取り出す
p currencies['japan']

# シンボルをハッシュのキーにする
currencies = { :japan => 'yen', :us => 'dollar', :india => 'ruppe' }
# シンボルを使って値を取り出す（文字列より高速）
p currencies[:japan]


# オブジェクトが持っているメソッド名がシンボルで管理されている
p 'apple'.methods
p :apple.methods