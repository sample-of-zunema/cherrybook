# with_indexメソッドを使った添え字付きの繰り返し処理


fruits = ['apple', 'orange', 'melon']
# mapとして処理しつつ、添え字も受け取る
p fruits.map.with_index { |fruit, i| "#{i}: #{fruit}" }

fruits = ['apple', 'orange', 'melon']
# 名前に"a"を含み、なおかつ添え字が奇数である要素を削除する
p fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }

fruits = ['apple', 'orange', 'melon']
p fruits.each
p fruits.map
p fruits.delete_if