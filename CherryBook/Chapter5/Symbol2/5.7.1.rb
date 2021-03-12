# シンボルを作成するさまざまな方法


p :apple
p :Apple
p :ruby_is_fun
p :okay?
p :welcome!
p :_secret
p :$dollar
p :@at_mark

# 識別子として無効な文字列（数字で始まったり、ハイフンやスペースが含まれている）
# :12345
# :ruby-is-fun
# :ruby is fun
# :()

# ただし↑上の場合でもシングルクオートで囲むとシンボルとして有効になる
p :'12345'
p :'ruby-is-fun'
p :'ruby is fun'
p :'()'

# シングルクオートの代わりにダブルクオートを使うと、文字列と同じように式展開を使える
name = 'Alice'
p :"#{name.upcase!}"
p name

# "文字列: 値"の形式で書くと、キーがシンボルになる
hash = { 'abc': 123 }
p hash