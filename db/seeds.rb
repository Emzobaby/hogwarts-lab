require ('pry')
require_relative('../models/student')
require_relative('../models/house')

Student.delete_all
House.delete_all

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

  house1 = House.new({
    "name" => "Gryfindor",
    "image" => ""
    })
    house1.save
  house2 = House.new({
    "name" => "Slytherin",
    "image" => ""
    })
    house2.save
  house3 = House.new({
    "name" => "Ravenclaw",
    "image" => ""
    })
    house3.save
  house4 = House.new({
    "name" => "Hufflepuff",
    "image" => ""
    })
    house4.save

binding.pry
nil
