# n以上m未満、n以上m未満の判定をする


# 不等号を使う場合
def liquid?(temperature)
  # ０度以上１００度未満であれば液体、と判定したい
  0 <= temperature && temperature < 100
end
p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)


# 範囲オブジェクトを使う場合
def liquid?(temperature)
  (0...100).include?(temperature)
end
p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)