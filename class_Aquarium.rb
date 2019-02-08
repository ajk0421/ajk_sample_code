class Aquarium

  attr_accessor :adult_price,:child_price,:baby_price

  def initialize(info)
    info = defaults.merge(info)

    @adult_price = info[:adult_price]
    @child_price = info[:child_price]
    @baby_price = info[:baby_price]
  end

  def defaults
    {adult_price: nil,child_price: nil,baby_price: nil}
  end

  def total_family_price(adult:0,child:0,baby:0)
    return "料金設定をして下さい" if price_nil?
    total_adult_price = @adult_price * adult
    total_child_price = @child_price * child
    total_baby_price = @baby_price * baby

    total_family_price = total_adult_price + total_child_price + total_baby_price

    <<~text
    大人：#{adult}名で、¥#{total_adult_price}
    子供：#{child}名で、¥#{total_child_price}
    幼児：#{baby}名で、¥#{total_baby_price}
    ご家族合わせて、¥#{total_family_price}になります。
    text
  end

  def price_nil?
    @adult_price.nil? || @child_price.nil? || @baby_price.nil?
  end
end

aquarium1 = Aquarium.new({adult_price: 2000,child_price: 1000,baby_price: 500})
aquarium2 = Aquarium.new({adult_price: 2000,child_price: 1000,baby_price: 500})
aquarium3 = Aquarium.new({adult_price: 2000,child_price: 1000})
aquarium4 = Aquarium.new({})

adult_count = 2
child_count = 1
baby_count = 1

puts aquarium1.total_family_price(adult:adult_count,child:child_count,baby:baby_count)
puts aquarium2.total_family_price(adult:adult_count,baby:baby_count)
puts aquarium3.total_family_price(adult:adult_count,child:child_count)
puts aquarium4.total_family_price
