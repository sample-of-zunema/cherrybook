# 正規表現オブジェクト作成時のオプション


# iオプションを付けると大文字小文字を区別しない
p 'HELLO' =~ /hello/i

# %r使った場合もオプションをつけられる
p 'HELLO' =~ %r{hello}i


regexp = Regexp.new('hello', Regexp::IGNORECASE)
p 'HELLO' =~ regexp