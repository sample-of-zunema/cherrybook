# ハッシュのキーにシンボルを使う


# ハッシュのキーをシンボルにする
currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }
# シンボルを使って取り出す
p currencies[:us]

# 新しいキーと値の組み合わせを追加する
currencies[:italy] = 'euro'
p currencies

# =>ではなく、"シンボル: 値"の記法でハッシュを作成する
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
# 値を取り出すときは同じ
p currencies[:us]


# キーも値もシンボルの場合は次のようになる
 { japan: :yen, us: :dollar, india: :rupee }
# 上のハッシュは下のハッシュと全く同じ
{ :japan => :yen, :us => :dollar, :india => :rupee }

 
 