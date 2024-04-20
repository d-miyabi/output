def register_data
  puts "データの登録"
end

def show_data
  puts "データの確認"
end

while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    register_data
  elsif input == 1
    show_data
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end