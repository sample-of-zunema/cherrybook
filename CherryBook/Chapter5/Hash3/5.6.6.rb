# ハッシュリテラルの{}とブロックの{}

def buy_burger(options = {}, menu)
    puts options
end

# p buy_burger {'drink' => true, 'potato' => false}, 'fish'

# 第１引数にハッシュの{}が来る場合は（）を省略できない
p buy_burger({'drink' => true, 'potato' => false}, 'fish')


def buy_burger(menu, options = {})
    puts options
end
# 第２引数にハッシュが来る場合は、（）を省略してもエラーにならない
p buy_burger 'fish', {'drink' => true, 'potato' => false}

# この場合、そもそもハッシュが最後の引数なので、{}を省略することもできる
p buy_burger 'fush', 'drink' => true, 'potato' => false
