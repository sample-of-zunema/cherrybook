# 優先順位が低いand、or、not

t1 = true
t2 = true
f1 = false

puts t1 and f1
puts t1 or f1
puts not(t1)
# puts !t1

puts !f1 || t1
puts not(f1) || t1
puts not(f1 || t1)
# !は||よりも優先順位が高い
!(f1) || t1
# notは||よりも優先順位が低い
not(f1 || t1)

puts t1 || t2 && f1
puts t1 or t2 and f1
# &&は||よりも優先順位が高い
t1 || (t2 && f1)
# andとorの優先順位は同じなので、左から順に評価される
(t1 or t2) and f1


def greeting(country)
  # countryがnil（またはfalse）なら、メッセージを返してメソッドを抜ける
  country or return 'countryを入力してください'

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
puts greeting(nil)
puts greeting('japan')
puts greeting('us')