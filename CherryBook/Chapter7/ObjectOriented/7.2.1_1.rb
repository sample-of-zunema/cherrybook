# userクラスを定義する
class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name =last_name
    @age = age
  end
end

# ユーザのデータを作成する
users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)


# 氏名を作成するメソッド
def full_name(user)
  "#{user.first_name} #{user.last_name}"
end

# ユーザのデータを表示する
users.each do |user|
  puts "氏名:#{full_name(user)}、年齢:#{user.age}"
end


# Usersクラスを導入すると、タイプミスをした時にエラーが出る
p users[0].first_name
# p users[0].first_mame

# 勝手に属性を追加できない
# users[0].country = 'japan'