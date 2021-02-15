# ヒアドキュメント（行指向文字列リテラル）


# 文字列は途中で改行することができる
puts "Line 1,
Line2"

puts 'Line 1,
Line 2'

# 下記がヒアドキュメントの利用例
a = <<TEXT
これはヒアドキュメントです。
複数業に渡る長い文字列を作成するのに便利です。
TEXT
puts a

# ヒアドキュメントの識別子としてHTMLを使う場合
b = <<HTML
<div>
  <img src="sample.jpg">
</div>
HTML
puts b


def some_method
  <<-TEXT
これはヒアドキュメントです。
<<-を使うと最後の識別子をインデントさせることができます。
  TEXT
end
puts some_method

def some_method
  <<~TEXT
  これはヒアドキュメントです。
  <<~を使うと内部文字列のインデント部分が無視されます。
  TEXT
end
puts some_method


# ヒアドキュメントの中では式展開が有効
name = 'Alice'
a = <<TEXT
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT
puts a

# ''で囲むと式展開が無効になる
name = 'Alice'
a = <<'TEXT'
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT
puts a

# ""で囲むと式展開は有効になる
name = 'Alice'
a = <<"TEXT"
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT
puts a


# ヒアドキュメントを直接引数として渡す（prependは渡された文字列を先頭に追加するメソッド）
a = 'Ruby'
a.prepend(<<TEXT)
Java
PHP
TEXT
puts a

# ヒアドキュメントで作成した文字列にk対して、直接upcaseメソッドを呼び出す
# （upcaseメソッドは文字列全て大文字にするメソッド）
b = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts b