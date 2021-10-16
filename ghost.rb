# data type
# bahamas = "Bahamas" # string
# earth = 8 # integer
# theo = 17.45 # float
# tuyen = false # bool false
# now = true # bool true
# what = nil # nil

# emptiness = Array.new
# emptiness[0] = "Masip"
# emptiness[7] = "CSDL"

# puts "enter your name: "
# name = gets.chomp()
# puts "Enter your age"
# name = gets.chomp().to_i

# puts emptiness

# states = {
#   :Pennsylvania => "PA",
#   "New York" => "NY",
#   "Oregon" => "OR"
# }
# puts states[1] 

# def say_hi(name = "No name", age = -1)
#   puts ("Hello " + name + ", you are " + age.to_s)
# end

# say_hi()

# def cube(num)

#   return num * num * num, 70, -8, 9.5, true, nil, false, "cau hoa"
# end

# puts cube(2)[7]

# is_male = false
# is_tall = false

# if is_male and is_tall
#   puts "You are a tall male"
# elsif is_male and !is_tall
#   puts "You are a short male"
# elsif !is_male and is_tall
#   puts "You are tall and not male"
# else
#   puts "You are neither male nor tall"
# end

# def max(num1, num2, num3)
#   if num1 >= num2 and num1 >= num3
#     return num1
#   elsif num2 >= num1 and num2 >= num3
#     return num2
#   else
#     return num3
#   end
# end

# puts max(-4, 99, -37)

# puts "nghgae" > "nghiad"

# puts "Enter first number: "
# num1 = gets.chomp().to_f
# puts "Enter operator: "
# op = gets.chomp()
# puts "Enter second number: "
# num2 = gets.chomp().to_f

# if op == "+"
#   puts (num1 + num2)
# elsif op == "-"
#   puts (num1 - num2)
# elsif op == "/"
#   puts (num1 / num2)
# elsif op == "*"
#   puts (num1 * num2)
# elsif op == "**"
#   puts (num1 ** num2)
# elsif op == "%"
#   puts (num1 % num2)
# else
#   puts "Invalid operator"
# end

# def get_day_name(day)
#   day_name = ""

#   case day.downcase()
#   when "mon"
#     day_name = "Monday"
#   when "tue"
#     day_name = "Tuesday"
#   when "wed"
#     day_name = "Wednesday"
#   when "thu"
#     day_name = "Thursday"
#   when "fri"
#     day_name = "Friday"
#   when "sat"
#     day_name = "Saturday"
#   when "sun"
#     day_name = "Sunday"
#   else
#     day_name = "Invalid abbreviation"
#   end

#   return day_name
# end

# puts "Enter day abbreviation: "
# abb = gets.chomp()
# puts get_day_name(abb)

# index = 1
# while index >= -99999
#   puts index
#   index -= 99
# end

# secret_word = "nutrilite"
# guess = ""
# max_guess = 6

# while guess != secret_word
#   max_guess -= 1
#   if (max_guess == 0)
#     break
#   end
#   print "Enter guess: "
#   guess = gets.chomp()
# end

# if guess == secret_word
#   puts "You won!"
# else
#   puts "You reach maximum guess. You lose."
# end

# friends = ["Kevin", "Karen", "Oscar", "Angela", "Andy"]

# for friend in friends do
#   puts friend
# end

# friends.each do |friend|
#   puts friend
# end

# for index in 0...5 do
#   puts index
# end

# 15.times do |num|
#   puts num
# end

# def pow(base_num, pow_num)
#   result = 1

#   return result
# end

# def pow(base_num, pow_num)
#   result = 1
#   # for index in (1..pow_num) do
#   #   result = result * base_num
#   # end
#   pow_num.times do |index|
#     result = result * base_num
#   end
#   return result
# end

# puts pow(11, 3)

# File.open("README.txt", "r") do |file|
#   for line in file.readlines() do
#     print line
#   end
# end

# file = File.open("employees.txt", "r")

# print file.readlines

# file.close()

# file = File.open("nguoi-dep.JPG", "r")
# print file.readlines
# file.close()


# File.open("employees.txt", "r+") do |file|
#   file.readline()
#   file.write("HI")
# end

# lucky_nums = [4, 8, 15, 16, 23, 42]

# begin
#   lucky_nums["ff"]
#   num = 10 / 0
# rescue ZeroDivisionError => e
#   puts e
# rescue TypeError => e
#   puts e
# end


# class Book
#   attr_accessor :title, :author, :pages
#   def initialize(title, author, pages)
#     @title = title
#     @author = author
#     @pages = pages
#   end
# end
# book1 = Book.new("Harry Potter", "JK Rowling", 400)
# book2 = Book.new("Lord of the rings","Tolkein", 500)

# class Student
#   attr_accessor :name, :major, :gpa
#   def initialize(name, major, gpa)
#     @name = name
#     @major = major
#     @gpa = gpa
#   end

#   def has_honors
#     if @gpa >= 3.5
#       return true
#     end
#     return false
#   end
# end

# student1 = Student.new("Jim", "Business", 2.6)
# student2 = Student.new("Pam", "Art", 3.6)
# puts student2.has_honors

class Question
  attr_reader :prompt, :answer
  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

p1 = "What color are apples?\n(a)red\n(b)purple\n(c)orange"
p2 = "What color are bananas?\n(a)pink\n(b)red\n(c)yellow"
p3 = "What color are pears?\n(a)yellow\n(b)green\n(c)orange"

questions = [
  Question.new(p1, "a"),
  Question.new(p2, "c"),
  Question.new(p3, "b"),
]

def run_test(questions)
  answer = ""
  score = 0
  for question in questions do
    puts question.prompt
    answer = gets.chomp()

    if answer == question.answer
      score += 1
    end
  end

  puts ("You got #{score}/#{questions.length()}")
end

# run_test(questions)

class Chef
  def make_chicken
    puts "The chef makes chicken"
  end
  def make_salad
    puts "The chef makes salad"
  end
  def make_special_dish
    puts "The chef makes bbq ribs"
  end
end

class ItalianChef < Chef
  def make_spaghetti
    puts "The chef makes spaghetti"
  end
  def make_special_dish
    puts "The chef makes eggplant parmesan"
  end
end

a_chef = Chef.new()
# a_chef.make_special_dish

milano_chef = ItalianChef.new()
# milano_chef.make_special_dish

require_relative "./useful_tools.rb"
include Tools
# Tools.say_hi("Mickey")
