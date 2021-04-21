class User
  # first_nameの読み書きを許可する
  attr_accessor :first_name
  # 省略
end
 user = User.new('Alice', 'Ruby', 20)
 p user.first_name
 
 user.first_name = 'ありす'
 p user.first_name