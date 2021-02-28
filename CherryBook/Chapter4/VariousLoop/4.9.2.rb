# uptoメソッドとdowntoメソッド


# nからmまで数値を１つずつ増やしながら何かを処理したい場合はIntegerクラスのuptoメソッドを使う
a = []
10.upto(14) { |n| a << n }
p a

# 逆に数値を減らしていきたい場合はdowntoメソッドを使う
a = []
14.downto(10) { |n| a << n }
p a