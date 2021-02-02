# 「if文」


# 10より大きいかどうか
n = 11
if n > 10
  puts '10より大きい'
else
  puts '10以下'
end


# 国によっての条件分岐
country = 'italy'
if country == 'japan'
  puts 'こんにちは'
elsif country == 'us'
  puts 'Hello'
elsif country == 'italy'
  puts 'ciao'
else
  puts '???'
end


# 「if文が戻り値を返す」という性質を利用したif文
country = 'italy'

# if文の返り値を変数に代入する
greeting =
if country == 'japan'
  puts 'こんにちは'
elsif country == 'us'
  puts 'Hello'
elsif country == 'italy'
  puts 'ciao'
else
  puts '???'
end

puts greeting


# 毎月1日だけポイントを５倍にしたい場合
point = 7
day = 1
# １日であればポイント５倍
if day == 1
  point *= 5
end

puts point

# １日であればポイント５倍（if修飾子を利用）
point = 7
day = 1
point *= 5 if day == 1
puts point


# ifとelsifの後ろにはthenを入れることもできる
country = 'italy'
if country == 'japan' then puts 'こんにちは'
elsif country == 'us' then puts 'Hello'
elsif country == 'italy' then puts 'ciao'
else '???'
end