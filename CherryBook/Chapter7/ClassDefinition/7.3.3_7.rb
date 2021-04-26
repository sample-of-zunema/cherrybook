class User
  # @nameを読み書きする絵ソッドが自動的に定義される
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  # nameメソッドやname=メソッドを明示的に定義する必要がない
end

user = User.new('Alice')
# @nameを変更する
user.name = 'Bob'
# @nameを参照する
p user.name