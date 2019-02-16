OSUSHI_GO_ROUND_PRICE = {gold:500,silver:420,green:350,red:280,white:220,yellow:120}

def total_price(osushi)
  gold_price = OSUSHI_GO_ROUND_PRICE[:gold] * osushi[:gold]
  silver_price = OSUSHI_GO_ROUND_PRICE[:silver] * osushi[:silver]
  green_price = OSUSHI_GO_ROUND_PRICE[:green] * osushi[:green]
  red_price = OSUSHI_GO_ROUND_PRICE[:red] * osushi[:red]
  white_price = OSUSHI_GO_ROUND_PRICE[:white] * osushi[:white]
  yellow_price = OSUSHI_GO_ROUND_PRICE[:yellow] * osushi[:yellow]

  osushi_total_price = gold_price + silver_price + green_price + red_price + white_price + yellow_price

  puts <<~text
    ありがとうございます！

    金のお皿が#{osushi[:gold]}枚
    銀のお皿が#{osushi[:silver]}枚
    緑のお皿が#{osushi[:green]}枚
    赤のお皿が#{osushi[:red]}枚
    白のお皿が#{osushi[:white]}枚
    黄のお皿が#{osushi[:yellow]}枚

    お会計が#{osushi_total_price}円になります！
    text
end

my_osushi_counter = {gold:1,silver:2,green:2,red:4,white:4,yellow:6}

puts total_price(my_osushi_counter)
