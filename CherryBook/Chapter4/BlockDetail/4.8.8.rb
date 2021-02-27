# ブロックを使うメソッドを定義する


names = ['田中', '鈴木', '佐藤']
p san_names = names.map { |name| "#{name}さん" }
p san_names.join('と')

# mapメソッドの後ろにドット（.）を書けば、mapメソッドの戻り値に対して、直接joinメソッドを呼び出しできる
names = ['田中', '鈴木', '佐藤']
p names.map { |name| "#{name}さん" }.join('と')

# {}とdo...endは基本的に同じなので、endの後ろにドット（.）をつけてメソッドを呼び出しできる
names = ['田中', '鈴木', '佐藤']
saan_names = names.map do |name|
  "#{name}さん"
end.join('と')
p saan_names