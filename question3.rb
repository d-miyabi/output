calss Food
  @@foods = []

  def self.input
    puts "料理名を入力してください:"
    name = gets.chomp
    puts "カロリーを入力してください:"
    calory = gets.to_i

    food = Food.new(name, calory)
    @@foods << food
  end

  def self.show_all_calory
    all_calory = 0
    line = "-----------------------------"
    puts line

    @@foods.each do |food|
      puts "#{food.name}  :#{food.calory}kcal"
      all_calory = all_calory + food.calory
    end

    puts line
    puts "カロリー合計  :#{all_calory}kcal"
  end

  def initialize(name, calory)
    @name = name
    @calory = calory
  end

  def name
    return @name
  end

while true do
  puts "[0]:カロリーを入力する"
  puts "[1]:カロリーの合計を見る"
  input = gets.to_i

  if input == 0
    Food.input
  elsif input == 1
    Food.show_all_calory
    exit
  end
end
