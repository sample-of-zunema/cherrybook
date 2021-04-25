class User
  def initialize(name)
    @name = name
  end
  
  def hello
    # 間違って@nameを@mameと書いてしまった！（@mameはnilになる）
    "Hello, I am #{@mame}."
  end
end

user = User.new('Alice')
# タイプミスに気づいていないと、名前が出ないことにびっくりするはず
p user.hello