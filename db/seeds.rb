require ('pry')
require_relative('../models/student')

Student.delete_all

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryfindor",
  "age" => 12
  })
  student1.save()

student2 = Student.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "house" => "Gryfindor",
  "age" => 12
  })
  student2.save()

student3 = Student.new({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house" => "Slytherin",
  "age" => 13
  })
  student3.save()

binding.pry
nil
