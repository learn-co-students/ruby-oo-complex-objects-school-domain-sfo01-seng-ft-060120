require 'pry'
class School
   attr_reader :school_name, :roster, :name, :grades 

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end


  def add_student(name, grades)
  # grades is key and name is value
   if @roster[grades] 
    # binding.pry
    @roster[grades] << name
   else 
    @roster[grades] = []
    @roster[grades] << name
   end
  end 

  def grade(grades)
    # roster.include?(grades)
    @roster[grades]
    #  binding.pry
  end

  def sort
     @roster.each do |k,v|
      @roster[k] = v.sort

# binding.pry
     end
    end
end
# => {9 => ["AC Slater", "Zach Morris"], 10 => ["Aardvark", "Kelly Kapowski"], 11 => ["Screech", "Xavier"]}
# grades =  integer 
# roster = {integer => [string]} {9 => "gin"}
# roster[grades] = [string, string] ["gin", "juice"]
# school = School.new("Bayside High School")
# school.roster
