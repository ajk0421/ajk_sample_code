require 'csv'

class Book
  attr_reader :title
  attr_accessor :price

  def initialize(title:, price:)
    @title = title
    @price = price
  end

  def self.csv_import
    path = 'books.csv'
    books = []

    CSV.foreach(path, headers: true) do |row|
      books << Book.new(title: row[0], price: row[1]) if row[0] && row[1]
    end

    books
  end

  def save
    puts "タイトル: #{@title}, 価格: ¥#{@price} のデータを保存しました"
  end

end

books =  Book.csv_import

books.each{|book| book.save}
