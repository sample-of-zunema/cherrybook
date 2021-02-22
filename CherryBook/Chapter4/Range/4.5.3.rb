# case文で使う


def charge(age)
  case age
  # ０歳から５歳までの場合
  when 0..5
    0
  # ６歳から１２歳までの場合
  when 6..12
    300
  # １３歳から１８歳までの場合
  when 13..18
    600
  # それ以外の場合
  else
    1000
  end
end
p charge(3)
p charge(12)
p charge(16)
p charge(25)