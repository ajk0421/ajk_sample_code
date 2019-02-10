# 登録した年齢に応じて呼び方を変える

class User

  attr_reader :name,:age

  def initialize(name:,age:)
    @name = name
    @age =age
  end

  def disp_info
    (@age <= 19) ? "#{@name}君：#{@age}歳":"#{@name}さん：#{@age}歳"
  end

end


user1 = User.new(name:"安食",age:31)
user2 = User.new(name:"岡部",age:18)

puts user1.disp_info
puts user2.disp_info
