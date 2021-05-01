# オブジェクト、インスタンス、レシーバ


# 「Alice Rubyさん、２０歳」というユーザのオブジェクトを作成する
alice = User.new('Alice', 'Ruby', 20)
# 「Bob Pythonさん、３０歳」というユーザのオブジェクトを作成する
bob = User.new('Bob', 'Python', 30)

# どちらもfull_nameメソッドを持つが、保持しているデータが異なるので戻り値は異なる
p alice.full_name
p bob.full_name

