class User
  def initialize(name)
    @name = name
  end
  
  def name
    @name
  end
end

user = User.new('Alice')
# nameメソッドを経由して@nameの内容を取得する
p user.name