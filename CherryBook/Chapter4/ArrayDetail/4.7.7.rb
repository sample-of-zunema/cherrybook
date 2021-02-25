# メソッドの可変超変数


# def メソッド名(引数1, 引数2, *可変長引数)
#   # メソッドの処理
# end

def greeting(*names)
  "#{names.join('と')}、こんにちは！"
end
p greeting('田中さん')
p greeting('田中さん', '鈴木さん')
p greeting('田中さん', '鈴木さん', '佐藤さん')