# code here!
require "pry"
class School
  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

    def add_student(student_name, grade)
    # adds an empty array since the grade value will return
    #false, then assign that grade to a students name

        @roster[grade]||= []
        @roster[grade] << student_name
        # binding.pry
    end


# hash["newKeyArray"] = []
# hash["newKeyArray"] << "new_value_for_value_array"

  def grade(grade)
    # return all the student in that grade
    @roster.find { |students_grade, students_names|
      if students_grade == grade
      return students_names
    end
    # needed the conditional to select the true statments!!
    }

  end

  def sort
    #returns all the students names in alphabetically order
    sorted_hash = {}
    @roster.map { |grade, change|
      sorted_hash[grade] = change.sort }
      sorted_hash
      # binding.pry
  end

end
