class User
  def initialize(name)
    @name = name
  end
  
  def hello
    # わざとローカル変数への代入をコメントアウトする（エラーになる）
    # shuffled_name = @name.chars.shuffle.join
    "Hello, I am #{shuffled_name}."
  end
end

user = User.new('Alice')
p user.hello