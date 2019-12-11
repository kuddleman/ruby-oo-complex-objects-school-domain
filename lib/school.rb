
class School
  attr_reader :name
  def initialize(name, roster={})
    @name = name
    @roster = roster
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    # does grade/key already exist?
    # then push name to existing array
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name   
    end  
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_hash = {}
    @roster.each do | grade, name_array |
      new_hash[grade] = name_array.sort
    end
    new_hash
  end

end