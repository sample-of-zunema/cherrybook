# ハッシュで使用頻度の高いメソッド


# keys
# keysメソッドはハッシュのキーを配列として返す
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
p currencies.keys


# values
# valuesメソッドはハッシュの値を配列として返す
p currencies.values

# has_key?/key?/include?/member?
# has_key?メソッドはハッシュの中に指定されたキーが存在するかどうか確認するメソッド。key?、include?、member?はいずれもhas_key?のエイリアスメソッド。
p currencies.has_key?(:japan)
p currencies.has_key?(:italy)
p currencies.key?(:us)
p currencies.include?(:india)
p currencies.member?(:italy)