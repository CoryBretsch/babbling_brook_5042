class Student 
  attr_reader :name, :age, :scores
  
  def initialize(student_hash)
    @name = student_hash[:name]
    @age = student_hash[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    (@scores.sum.to_f/@scores.length).round(1)
  end
  
end