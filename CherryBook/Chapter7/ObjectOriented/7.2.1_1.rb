# userクラスを定義する
class user
  attr_reader :first_name, :last_name, :age
  
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name =last_name
    @age = age
  end
end
