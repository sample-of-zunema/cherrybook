# メソッドのキーワード引数とハッシュ


def buy_burger(menu, drink, potato)
  # ハンバーガーを購入
  if drink
    # ドリンクを購入
  end
  if potato
    # ポテトを購入
  end
end

# チーズバーガーとドリンクとポテトを購入する
buy_burger('cheese', true, true)

# フィッシュバーガーとドリンクを購入する
buy_burger('fish', true, false)


# メソッドのキーワード引数を使うと可読性が上がる、メソッドのキーワード引数は次のように定義する
def メソッド名(キーワード引数１: デフォルト値１, キーワード引数２: デフォルト値２)
  # メソッドの実装
end

# さっきのbuy_burgerメソッドでキーワード引数を使うと次のようになる
def buy_burger(menu, drink: true, potato: true)
  # ハンバーガーを購入
  if drink
    # ドリンクを購入
  end
  if potato
    # ポテトを購入
  end
end

# kキーワード引数を持つメソッドを呼び出す場合は、ハッシュを作成した時と同じように”シンボル: 値”の形式で引数を指定する
buy_burger('cheese', drink: true, potato: true)
buy_burger('fish', drink:true, potato: false)

# キーワードを使わない場合
buy_burger('cheese', true, true)
buy_burger('fish', true, false)

# キーワード引数を使う場合
buy_burger('cheese', drink: true, potato: true)
buy_burger('fish', drink:true, potato: false)


# キーワード引数にはデフォルト値が設定されているから引数を省略できる
# drinkはデフォルト値のtrueを使うので指定しない
buy_burger('fish', potato: false)

# drinkもpotatoもデフォルト値のtrueを使うので指定しない
buy_burger('cheese')

# キーワード引数は呼び出し時に自由に順番を入れ替えられる
buy_burger('fish', potato: false, drink: true)

# 存在しないキーワード引数を指定した場合はエラーになる
buy_burger('fish', salad: true)


# キーワード引数のデフォルト値は省略することもできる。だがデフォルト値を持たないキーワード引数は、呼び出し時に省略できない。
def buy_burger(menu, drink:, potato:)
  # ハンバーガーを購入
  if drink
    # ドリンクを購入
  end
  if potato
    # ポテトを購入
  end
end

# キーワード引数を指定すれば、デフォルト値ありの場合と同じように使える
buy_burger('cheese', drink: true, potato: true)

# キーワード引数を省略するとエラーになる
buy_burger('fish', potato: false)


# キーワード引数と一致するハッシュであれば、メソッドの引数として渡すことができる
params = { drink: true, potato: false }
buy_burger('fish', params)