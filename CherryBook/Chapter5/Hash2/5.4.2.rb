# キーや値に異なるデータ型を混在させる


# 文字列のキーとシンボルのキーを混在させる
hash = { 'abc' => 123, def: 456 }
p hash

# 値を取得する場合はデータ型を合わせてキーを指定する
p hash['abc']
p hash[:def]

# データが異なると値は取得できない
p hash[:abc]
p hash['def']


# ハッシュに格納する値に関しては、異なるデータ型が混在するケースがある
person = {
  # 値が文字列
  name: 'Alice',
  # 値が数値
  age: 20,
  # 値が配列
  fliends: ['Bob', 'Carol'],
  # 値がハッシュ
  phones: { home: '1234-0000', mobile: '5678-0000' }
}

p person[:age]
p person[:fliends]
p person[:fliends][0]
p person[:phones]
p person[:phones][:mobile]