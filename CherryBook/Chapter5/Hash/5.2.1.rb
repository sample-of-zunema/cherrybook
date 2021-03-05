# 要素の追加、変更、取得


# 後から新しいキーと値を追加する場合
# ハッシュ[キー] = 値

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
p currencies

# イタリアの通過を追加する
currencies['italy'] = 'euro'
p currencies

# すでにキーが存在していた場合は、値が上書きされる
# 既存の値を上書きする
currencies['japan'] = '円'
p currencies


# ハッシュから値を取り出す場合
# ハッシュ[キー]

p currencies['india']

# 存在しないキーを指定するとnilが返る
p currencies['brazil']