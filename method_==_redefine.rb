#比較演算子`==`を再定義し、インスタンス同士を比較するコード


class Product
  attr_reader :code,:title,:artist

  def initialize(code:,title:,artist:)
    @code = code
    @title = title
    @artist = artist
  end

  def ==(other)
    (@code == other.code)? "同じ商品になります":"別の商品です"
  end
end


product1 = Product.new(code:"L-1616",title:"少女A",artist:"中森明菜")
product2 = Product.new(code:"L-1750",title:"DESIRE-情熱-",artist:"中森明菜")
product3 = Product.new(code:"L-1616",title:"少女A",artist:"中森明菜")

puts product1 == product2
puts product1 == product3
