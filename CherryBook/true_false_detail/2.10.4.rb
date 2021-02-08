# case文

country = 'italy'

# if文を使う場合
if country == 'japan'
  'こんにちは'
elsif country == 'us'
  'Hello'
elsif country == 'italy'
  'ciao'
end

# case文を使う場合
case country
when 'japan'
  'こんにちは'
when 'us'
  'Hello'
when 'italy'
  'ciao'
else
  '???'
end

# when節に複数の値を指定する
country = 'アメリカ'
case country
when 'japan', '日本'
  'こんにちは'
when 'us', 'アメリカ'
  'Hello'
when 'italy', 'イタリア'
  'ciao'
else
  '???'
end

# case文も結果に変数を入れることができる
message =
  case country
  when 'japan'
    'こんにちは'
  when 'us', 'アメリカ'
    'Hello'
  when 'italy'
    'ciao'
  else
    '???'
  end
puts message

case country
when 'japan' then 'こんにちは'
when 'us' then 'Hello'
when 'italy' then 'ciao'
else '???'
end