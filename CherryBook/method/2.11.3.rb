# !で終わるメソッド

a = 'ruby'

# upcaseだと変数aの値は変化しない
puts a.upcase
puts a

# upcase!だと変数aの値も大文字に変わる
puts a.upcase!
puts a

# ！も自分で定義できる
def reverse_upcase!(s)
  s.reverse!.upcase!
end
s = 'ruby'
puts reverse_upcase!(s)


# 変数名には！や？は使えない
# puts odd? = 1.odd?
# puts upcase! = 'ruby'.upcase!