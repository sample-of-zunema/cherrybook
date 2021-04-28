# Userクラスにクラスメソッドを追加する

class User
  def initialize(name)
    @name = name
  end

  # self.をつけるとクラスメソッドになる
  def self.create_users(names)
    # mapメソッドを忘れた人は「4.4.1 map/collect」の項を参照
    names.map do |name|
      User.new(name)
    end
  end
  
  # これはインスタンスメソッド
  def hello
    "Hello, I am #{@name}."
  end
end

names = ['Alice', 'Bob', 'Carol']
# クラスメソッドの呼び出し
users = User.create_users(names)
users.each do |user|
  # インスタンスメソッドの呼び出し
  puts user.hello
end
