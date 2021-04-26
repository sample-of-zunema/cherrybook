class User
  # @nameと@ageのへのアクセサメソッドを定義する
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

end

user = User.new('Alice', 20)
p user.name
p user.age