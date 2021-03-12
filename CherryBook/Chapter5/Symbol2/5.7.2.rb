# シンボルと文字列の関係


string = 'apple'
symbol = :apple

p string == symbol
# p string + symbol

string.to_sym
p string.to_sym == symbol

symbol.to_s
p string == symbol.to_s
p string + symbol.to_s

# respond_to?メソッドの引数には文字列とシンボルの両方を渡せる
p 'apple'.respond_to?('include?')
p 'apple'.respond_to?(:include?)

p 'apple'.respond_to?('foo_bar')
p 'apple'.respond_to?(:foo_bar)


# 文字列に'pp'が含まれるか調べる
p 'apple'.include?('pp')

# シンボルを引数で渡すとエラーになる
# p 'apple'.include?(:pp)