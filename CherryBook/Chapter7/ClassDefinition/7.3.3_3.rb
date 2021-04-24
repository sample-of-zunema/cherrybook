class User
  def initialize(name)
    # わざとインスタンス変数への代入をコメントアウトする（nilが返る）
    # @name = name
  end
  
  def hello
    "Hello, I am #{@name}."
  end
end

user = User.new('Alice')
@nameを参照するとnilになる（つまり名前の部分に何も出ない）
p user.hello