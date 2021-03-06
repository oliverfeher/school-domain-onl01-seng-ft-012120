class School

  attr_reader :roster, :name #have to create reader for name
  
  def initialize(name) #initialize with name, but must create reader
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

  def grade(grade)
    if roster.include?(grade)
      roster[grade].map { |student| student}
    end
  end

  def sort
    @roster.map { |key, value| [key, value.sort]}.to_h
  end

end