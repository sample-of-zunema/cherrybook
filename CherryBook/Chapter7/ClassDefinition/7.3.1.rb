# オブジェクトの作成とinitializeメソッド

# class User
#   def initialize
#     puts 'Initialized.'
#   end
# end
# User.new
# user = User.new
# user.initialize


# initializeメソッドに引数をつけると、newメソッドを呼ぶ時にも引数が必要になる
class User
  def initialize(name, age)
    puts "name: #{name}, age: #{age}"
  end
end
# User.new
User.new('Alice', 20)