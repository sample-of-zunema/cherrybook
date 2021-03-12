# メソッドの呼び出し時の{}の省略


# optionsは任意のハッシュを受け付ける
def buy_burger(menu, options = {})
    puts options
end

# ハッシュを第２引数として渡す
p buy_burger('fish', {'drink' => true, 'potato' => false})

# ハッシュリテラルの{}を省略してメソッドを呼びだす
p buy_burger('fish', 'drink' => true, 'potato' => false)



# menuとoptionsの順番を入れ替える
def buy_burger(options = {}, menu)
    puts options
end

# optionsは最後の引数ではないので、ハッシュリテラルの{}はできない
# p buy_burger('drink' => true, 'potato' => false, 'fish')

# 最後の引数でなければ{}を付けて普通にハッシュを作成する
p buy_burger({'drink' => true, 'potato' => false}, 'fish')