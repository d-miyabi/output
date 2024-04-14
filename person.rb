class Person
  def initilize(name. age)
    @name = name
    @age = age
  end
end

class Student < Person
  def introduce
    puts "私の名前は#{@name}です。#{@age}歳です"
  end
end

yamada = Student.new("山田", 20)
yamada.introduce