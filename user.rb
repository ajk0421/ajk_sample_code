class User

  attr_accessor :name, :age

  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end

  #Userクラスから生成されてインスタンスの情報を出力するメソッド(インスタンスメソッド)
  def info
    "名前：#{@name}：#{@age}歳"
  end

  #user_dataを引数で受け取り、そこからUserクラスのインスタンスを生成するメソッド(クラスメソッド)
  def self.create_users(user_data)
    user_data.map{|params| User.new(params)}
  end
end

user_data = [{name: "神里", age: 32},{name: "ふっしー", age: 34},{name: "あじー", age: 32}]

users = User.create_users(user_data)

users.each{|user| puts user.info}
