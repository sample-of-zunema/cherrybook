# ハッシュを使った擬似キーワード引数


# ハッシュを引数として受け取り、擬似キーワード引数を実現する
def buy_burger(menu, options = {})
  drink = options[:drink]
  potato = options[:potato]
  if drink
    # ドリンクを購入
  end
  if potato
    # ポテトを購入
  end
end
buy_burger('cheese', drink: true, potato: true)

# 擬似キーワード引数の場合はどんなキーワードを指定してもエラーにならない
# （武功なキーをエラーにするためには明示的な実装が必要）
buy_burger('fish', salad: true)