class Student
  attr_accessor :first_name, :last_name, :primary_phone_number  

  def introduction(target)
    puts "Hello #{target}, my name is #{first_name}!"
  end

  def favourite_number
    7
  end

end

sam = Student.new
sam.first_name = "Sam"
sam.introduction('Ana')