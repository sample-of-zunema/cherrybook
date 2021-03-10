# 任意のキーワードを受け付ける＊＊引数


def buy_burger(menu, drink: true, potato: true)
    if drink
    end
    if potato
    end
end
# saladとchickenは無効なキーワード引数なのでエラーになる
# p buy_burger('fish', drink: true, potato: false, salad: true, chicken: false)

# 想定外のキーワードはothers引数で受け取る
def buy_burger(menu, drink: true, potato: true, **others)
    # othersはハッシュとして渡される
    puts others
    if drink
    end
    if potato
    end
end

p buy_burger('fish', drink: true, potato: false, salad: true, chicken: false)