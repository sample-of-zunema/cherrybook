# インスタンスメソッドの定義


class User
  # インスタンスメソッドの定義
  def hello
    "Hello!"
  end
end

user = User.new
p user.hello