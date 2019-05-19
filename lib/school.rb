# code here!
class School
attr_accessor :name, :roster

    def initialize(name)
      @name = name
      @roster = {}
    end

     def add_student(name, grade)
        #add students to grade  
        if @roster[grade] != nil
        @roster[grade] << name
      else 
        @roster[grade] = [name]
      end
    end
  
     def grade(grade)
      @roster[grade]
    end
  
     def sort
       #iterate through roster of students  
      @roster.each do |key, value|
        #and sort the students from different grades 
        value.sort!
      end
    end
end