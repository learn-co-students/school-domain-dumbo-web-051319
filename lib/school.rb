require 'pry'

class School
  attr_accessor :roster
  attr_reader :name, :student, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    self.roster.key?(grade) ? self.roster[grade] << student : self.roster[grade] = [student]
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each{|k,v|
      arr = v.sort
      self.roster[k] = arr
    }
  end
end
