def register_item(registered_item)
  item = { item_name: item_name, price: :price, purchase: :purchase }
  puts "商品名を入力してください："
  item_name = gets.chomp
  puts "販売価格を入力してください："
  price = gets_to.i
  puts "仕入れ値を入力してください："
  purchase = gets_to.i
  line = "---------------------------"

  # 入力された値（ハッシュオブジェクトで管理している値）を表示する
  puts "商品名 : \n#{item_name}"
  puts "販売価格 : 円\n#{price}"
  puts "仕入れ値 : 円\n#{purchase}"
end

def check_items(registered_item)
  # 保存された全ての商品情報（商品名・販売価格・仕入れ値）を商品ごとに一覧表示する
  line = "---------------------------"
  puts "【商品一覧】\n#{line}"

  registered_item.each do |item|
    puts "商品名："
    puts "販売価格：円"
    puts "仕入れ値：円\n#{line}"
  end
end

def end_program
  exit
end

def exception
  puts "入力された値は無効な値です"
end

item_list = []         # 配列オブジェクトitem_listの生成

while true do
  # メニューの表示
  puts "商品数: #{item_list.length}"
  puts "[1]商品を登録する"
  unless item_list.empty?
    puts "[2]商品の一覧を確認する"
  end
  puts "[3]アプリを終了する"

  input = gets.to_i

  if input == 1 then
    item_list = register_item(item_list)
  elsif input == 2 then
    check_items(item_list)
  elsif input == 3 then
    end_program
  else
    exception
  end
end
