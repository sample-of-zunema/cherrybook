class User
  # @nameを読み書きする絵ソッドが自動的に定義される
  attr_writer :name

  def initialize(name)
    @name = name
  end

end

user = User.new('Alice')
# @nameは変更できる
user.name = 'Bob'

# @nameの参照はできない
p user.name