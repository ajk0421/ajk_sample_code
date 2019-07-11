class Book
  attr_accessor :title, :year, :other

  def initialize(**params)
    @title = params[:title]
    @year = params[:year]
    @other = params[:other]
  end

  def self.list(books)
    puts "Booklist --------------------------------------------------------"

    books.each.with_index(1) do |book, i|
      puts "#{i}. #{book.title} /(#{book.year})"
    end
    puts "-----------------------------------------------------------------"
    puts ""
  end

  def self.select(books)
    select_nums = []
    roop_times = books.size

    roop_times.times do |i|
      puts "#{i + 1}冊目の本を選んでください"
      select_num = gets.chomp.to_i - 1

      redo if select_nums.include?(select_num) || select_num > roop_times

      select_nums << select_num

      puts books[select_num].book_data
     end
  end

  def book_data
    return "選択中の本は【 #{@title}　/ 連載開始は#{@year}~  】です \n #{@other}"
  end

end

book1 = Book.new(title: "ワンピース",  year: 1997, other: "海賊王を夢見る少年モンキー・D・ルフィを主人公とする、「ひとつなぎの大秘宝（ワンピース）」を巡る海賊漫画")
book2 = Book.new(title: "ドラゴンボール",year: 1984, other: "世界中に散らばった七つの球をすべて集めると、どんな願いも一つだけ叶えられるという秘宝・ドラゴンボールと、主人公・孫悟空を中心に展開する「冒険」「夢」「バトル」「友情」などを描いた漫画")
book3 = Book.new(title: "スラムダンク", year: 1990, other: "主人公の不良少年桜木花道の挑戦と成長を軸にしたバスケットボール漫画")

books = [book1, book2, book3]

# プレイリスト表示
Book.list(books)

# booksの中から選択
Book.select(books)
