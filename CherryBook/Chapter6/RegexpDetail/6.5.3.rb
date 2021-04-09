# 正規表現オブジェクト作成時のオプション


# iオプションを付けると大文字小文字を区別しない
p 'HELLO' =~ /hello/i

# %r使った場合もオプションをつけられる
p 'HELLO' =~ %r{hello}i


regexp = Regexp.new('hello', Regexp::IGNORECASE)
p 'HELLO' =~ regexp


# mオプションがないと.は改行文字にマッチしない
p "Hello\nBye" =~ /Hello.Bye/

# mオプションをつけると.が改行文字にもマッチする
p "Hello\nBye" =~ /Hello.Bye/m



regexp = Regexp.new('Hello.Bye', Regexp::MULTILINE)
p "Hello\nBye" =~ regexp


# xオプションをつけたので改行やスペースが無視され、コメントもかける
regexp = /
\d{3} # 郵便番号の先頭３桁
-     # 区切り文字のハイフン
\d{4} # 郵便番号の末尾４桁
/x
p '123-4567' =~ regexp