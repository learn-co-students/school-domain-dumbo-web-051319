# code here!
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
    end

    def grade(grade)
      @roster[grade]
    end

    def sort
    # define a blank hash to sort the students in
    sort_hash = {}
    # iterate through the roster, going through the grades and the students
    @roster.each do |grade, students|
      # sort the students alphabetically, but then also by grade
      sort_hash[grade] = students.sort
    end
    sort_hash
  end
end
