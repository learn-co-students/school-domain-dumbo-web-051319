# code here!
require 'pry'
class School 
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    if roster[grade] 
      roster[grade] << student
    else 
      roster[grade] = []
      roster[grade] << student
    end
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    #@roster.sort by name 
    newHash = {}
    @roster.each do |class_studends, students| 
      newHash[class_studends] = []
      array = students.sort
      newHash[class_studends] += array
    end
    newHash
  end
end 

scho = School.new("Bayside High School")
#binding.pry