# %記法で文字列の配列を簡潔にする


# []で文字列の配列を作成する
p ['apple', 'melon', 'orange']

# %wで文字列の配列を作成する（！で囲む）
p %w!apple melon orange!

# %wで文字列の配列を作成する（丸カッコで囲む場合）
p %w(apple melon orange)

# 空白文字（スペースや改行）が連続した場合も1つの区切り文字とみなされる
p %w(
  apple
  melon
  orange
)

# 値にスペースを含めたい場合はバックスラッシュでエスケープする
p %w(big\ apple small\ melon orange)

# 式展開や改行文字（\n）、タブ文字（\t）などを含めたい場合は、%W（大文字のW）を使う
prefix = 'This is'
p %W(#{prefix}\ an\ apple small\nmelon orange)