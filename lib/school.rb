class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if roster[grade] != nil
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end

  def grade(grade_number)
    roster[grade_number]
  end
  
  def sort 
    sorted_hash = {}
    roster.keys.each do |grade|
      sorted_hash[grade] = roster[grade].sort
    end 
    sorted_hash
  end 
  


end