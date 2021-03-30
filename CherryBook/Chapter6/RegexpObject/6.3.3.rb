# キャプチャの結果に名前をつける

(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日

text = '私の誕生日は1977年7月17日です。'

m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
# シンボルで名前を指定してキャプチャの結果を取得する
m[:year]
m[:month]
m[:day]

# 文字列で指定することもできる
m["year"]

# 連番で指定することもできる
p m[2]

text = '私の誕生日は1977年7月17日です。'
# キャプチャの名前がそのままローカル変数に割り当てられる
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  puts "#{year}/#{month}/#{day}"
end

# text = '私の誕生日は1977年7月17日です。'
# 正規表現が右辺にくるとローカル変数が作成されない
# if text =~ /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/
#   puts "#{year}/#{month}/#{day}"
# end