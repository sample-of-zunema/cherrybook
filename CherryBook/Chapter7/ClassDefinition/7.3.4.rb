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

alice = User.new('Alice')
# インスタンスメソッドはインスタンスに（オブジェクト）に対して呼び出す
p alice.hello

bob = User.new('Bob')
# インスタンスによって内部のデータが異なるので、helloメソッドの結果も異なる
p bob.hello