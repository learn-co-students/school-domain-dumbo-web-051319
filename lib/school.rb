class School
  
  attr_accessor :name, :roster
 
  def initialize(name)
    @name = name
    @roster = {}
  end

  
   def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
  #INSTRUCTIONS FOR add_student 
  #https://stackoverflow.com/questions/995593/what-does-or-equals-mean-in-ruby
  
  def grade(num_grade)
    roster[num_grade]
  end
  
  def sort 
    sort = {}
    roster.each do |grade, students|
      roster[grade] = students.sort
    end
    roster
  end
end 