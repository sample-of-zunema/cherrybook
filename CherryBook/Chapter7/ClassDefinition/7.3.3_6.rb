class User
  def initialize(name)
    @name = name
  end
  
  # @nameを外部から参照するためのメソッド
  def name
    @name
  end
  
  # @nameを外部から変更するためのメソッド
  def name=(value)
    @name = value
  end
  
end

user = User.new('Alice')
# 変数に代入しているように見えるが、実際はname=メソッドを呼び出している
user.name = 'Bob'
p user.name