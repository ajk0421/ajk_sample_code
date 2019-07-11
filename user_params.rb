User class
  attr_accessor :name, :age

  def initialize(**user_params)
    @name = user_params[:name]
    @age = user_params[:age]
  end


end