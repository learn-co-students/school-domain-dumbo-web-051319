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
    @roster.each do |elem| 
      binding.pry
    
    end
  end
end 

scho = School.new("Bayside High School")
#binding.pry