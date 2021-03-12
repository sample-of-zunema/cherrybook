# ハッシュの初期値を理解する


h = {}
p h[:foo]

# キーがなければ'hello'を返す
h = Hash.new('hello')
p h[:foo]


h = Hash.new('hello')
p a = h[:foo]
p b = h[:bar]

# 変数aと変数bは異なるオブジェクト（ブロックの実行時に毎回新しい文字列が作成される）
p a.equal?(b)

# 変数aに破壊的な変更を適用すると、変数bの値も変わってしまう
a.upcase!
p a
p b

# ちなみにハッシュ自身は空のままになっている
p h


# キーが見つからないとブロックがその都度実行され、ブロックの戻り値が初期値になる
h = Hash.new{ 'hello' }
p a = h[:foo]
p b = h[:bar]

# 変数aと変数bは異なるオブジェクト（ブロックの実行時に毎回新しい文字列が作成される）
p a.equal?(b)

# 変数aに破壊的な変更をしても、変数の値は変わらない
a.upcase!
p a
p b

# ハッシュは空のまま
p h


# 初期値を返すだけでなく、ハッシュに指定されたキーと初期値を同時に設定する
h = Hash.new{ |hash, key| hash[key] = 'hello' }
p h[:foo]
p h[:bar]
p h[:dmm]

# ハッシュにキーと値が追加されている
p h