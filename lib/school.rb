class School

  attr_reader :roster, :name #have to create reader for name
  
  def initialize(name) #initialize with name and roster, but must create reader for name
    @name = name 
    @roster = {}
  end

  def add_student(student_name, grade)
   if @roster.has_key?(grade)
    @roster[grade] << student_name
    else
    @roster[grade] = [student_name]
    end
  end
end