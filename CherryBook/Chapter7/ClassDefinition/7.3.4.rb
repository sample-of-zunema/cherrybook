# クラスメソッドの定義

class User
  def initialize(name)
    @name = name
  end
  
  # これはインスタンスメソッド
  def hello
    # @nameの値はインスタンスによって異なる
    "Hello, I am #{@name}"
  end
end
