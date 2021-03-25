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

