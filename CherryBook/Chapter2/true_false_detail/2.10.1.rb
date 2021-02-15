# &&や||の戻り値と評価を終了するタイミング

puts 1 && 2 && 3
puts 1 && nil && 3
puts 1 && false && 3

puts nil || false
puts false || nil
puts nil || false || 2 || 3


# Alice、Bob、Carolと順に検索し、最初に見つかったユーザ（nilまたはfalse以外の値）を変数に格納する

# user = find_user('Alice') || find_user('Bob') || find_user('Carol')
# puts user.valid? && send_email_to(user)