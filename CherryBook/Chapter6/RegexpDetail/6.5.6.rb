# 組み込み変数を書き換えないmatch?メソッド


# マッチすればtrueを返す
p /\d{3}-\d{4}/.match?('123-4567')

# マッチしても組み込み変数やRgexp.last_matchを書き換えない(すでにどこかで=~やmatchメソッドを使っていた場合は、その時に設定された値になります)
p $~
p Regexp.last_match
