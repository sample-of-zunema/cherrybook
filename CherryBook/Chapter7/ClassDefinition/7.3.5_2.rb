class Product
  DEFAULT_PRICE = 0
  
  def self.default_price
    # クラスメソッドから定数を参照する
    DEFAULT_PRICE
  end
  
  def default_price
    # インスタンスメソッドから定数を参照する
    DEFAULT_PRICE
  end
  
end

p Product.default_price

product = Product.new
p product.default_price