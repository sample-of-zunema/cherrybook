# クラスを使う場合と使わない場合の比較

# ユーザのデータを作成する
users = []
users << { first_name: 'Alice', last_name: 'Ruby', age: 20 }
users << { first_name: 'Bob', last_name: 'Python', age: 30 }

# ユーザのデータを表示する
users.each do |user|
  puts "氏名: #{user[:first_name]} #{user[:last_name]}、年齢:#{user[:age]}"
end



# 氏名を作成するメソッド
def full_name(user)
  "#{user[:first_name]} #{user[:last_name]}"
end

# ユーザを表示する
users.each do |user|
  puts "氏名:#{full_name(user)}、年齢:#{user[:age]}"
end


# ハッシュだとタイプミスしてもnilが返るだけだから不具合に気づきにくい
p users[0][:first_name]
p users[0][:first_mame]