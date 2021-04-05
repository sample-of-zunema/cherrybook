# 正規表現と組み合わせると便利なStringクラスのメソッド


# scan
p '123 456 789'.scan(/\d+/)

p '1977年7月17日 2016年12月31日'.scan(/(\d+)年(\d+)月(\d+)日/)

p '1977年7月17日 2016年12月31日'.scan(/(?:\d+)年(?:\d+)月(?:\d+)日/)

p '1977年7月17日 2016年12月31日'.scan(/\d+年\d+月\d+日/)


# [],slice,slice!
text = '郵便番号は123-4567です'
p text[/\d{3}-\d{4}/]

# マッチする部分があ複数ある場合は、最初にマッチした文字列が返る
text2 = '123-4567 456-7890'
p text2[/\d{3}-\d{4}/]


# キャプチャを使うと第二引数で何番目のキャプチャを取得するか指定できる
p text3 = '誕生日は1977年7月17日です'

# 第二引数がないとマッチした部分全体が返る
p text3[/(\d+)年(\d+)月(\d+)日/]

# 第二引数を指定して３番目のキャプチャを取得する
p text3[/(\d+)年(\d+)月(\d+)日/,3]


# 名前つきキャプチャであれば名前で指定することもできる
text4 = '誕生日は1977年7月17日です'

# シンボルでキャプチャの名前を指定する
p text4[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :day]