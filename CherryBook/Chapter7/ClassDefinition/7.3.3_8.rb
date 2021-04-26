class User
  # @nameを読み書きする絵ソッドが自動的に定義される
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

end

user = User.new('Alice')
# @nameの参照はできる
p user.name

# @nameを変更しようとするとエラーになる
user.name　= 'Bob'