# Userクラスを定義する


class User
  attr_reader :first_name, :last_name, :age
  
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end
  
  # 氏名を作成するメソッド
  def full_name
    "#{first_name} #{la}"