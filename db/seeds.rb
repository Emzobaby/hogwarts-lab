require ('pry')
require_relative('../models/student')
require_relative('../models/house')

Student.delete_all
House.delete_all

house1 = House.new({
  "name" => "Gryfindor",
  "image" => "/images/gryfindor.jpg"
  })
  house1.save
house2 = House.new({
  "name" => "Slytherin",
  "image" => "/images/slytherin.jpg"
  })
  house2.save
house3 = House.new({
  "name" => "Ravenclaw",
  "image" => "/images/ravenclaw.jpg"
  })
  house3.save
house4 = House.new({
  "name" => "Hufflepuff",
  "image" => "/images/hufflepuff.jpg"
  })
  house4.save

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_id" => house1.id,
  "age" => 12
  })
  student1.save()

student2 = Student.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "house_id" => house1.id,
  "age" => 12
  })
  student2.save()

student3 = Student.new({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house_id" => house2.id,
  "age" => 13
  })
  student3.save()

binding.pry
nil
