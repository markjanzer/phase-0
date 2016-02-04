# I worked on this challenge by myself
# This challenge took me [#] hours.

# Pseudocode
# I believe the best way to do this would be to run the fibonacci sequence. If the given_number is less than the fibonacci number, the fibonacci sequence will continue. If it is equal, it will return true, and if the fibonacci number is greater, return false.



# Initial Solution

def is_fibonacci?(num)
  fib_num = 1
  prev_num = 1
  while (num > fib_num)
    fib_num += prev_num
    prev_num = fib_num - prev_num
  end
  return fib_num == num
end


# Refactored Solution

# def is_fibonacci?(num)
#   fib_num = 2
#   inc = 1
#   while (num > fib_num)
#     fib_num += inc
#     puts fib_num
#     inc += 1
#   end
#   fib_num == num || num == 1
# end

# Reflection

# What concepts did you review or learn in this challenge?
# I learned about the fibonacci sequence, and refactoring it pushed me to think about the sequence in new ways. It was also review for Ruby Syntax.

# What is still confusing to you about Ruby?
# I am still confused about Inheritance, I think I am going to do that challenge next.

# What are you going to study to get more prepared for Phase 1?
# Inheritance and Testing! Maybe composition too, I'm not sure what that is. I think I also want to do a bit more work on CSS positioning and SQL many-to-many databases.


# INTRODUCTION TO INHERITANCE (completed November 2nd)


# Cohort variables: name, p0_start_date, immersive_start_date, graduation_date
# LocalCohort variables: city, students, email_list, num_of_students

# Cohort methods: currently_in_phase, graduated?
# LocalCohort methods: add_student, remove_student


#  PSEUDOCODE

# Create class Cohort
#   Initialize name, p0_start_date
#   Create variables immersive_start_date and graduation_date that return values based on p0_start_date

#   Create method currently_in_phase
#     If current date is 0 to 9 weeks after p0_start_date, return Phase 0
#     Else if current date is 10 to 12 weeks after p0_start_date, return Phase 1
#     Else if current date is 13 to 15 weeks after p0_start_date, return Phase
#     Else if current date is 16 to 18 weeks after p0_start_date, return Phase 3
#     If graduated is true, return graduated
#     Else return that the cohort hasn't started.

#   Create method graduated?
#     Return true or false depending on whether the current date is past the graduation date.
# END

# Create class LocalCohort that inherits from Cohort
#   initialize city, students, email_list
#
require 'date'
require 'time'

class Cohort
  def initialize(name, p0_start_date)
    @name = name
    @p0_start_date = Date.parse(p0_start_date)
    @immersive_start_date = @p0_start_date + 63
    @graduation_date = @p0_start_date + 133
  end

  attr_reader :name, :p0_start_date, :immersive_start_date, :graduation_date

  def currently_in_phase
    time_now = Time.now.to_date
    if time_now < @p0_start_date
      return "Not yet begun"
    elsif time_now > @graduation_date
      return "You have graduated"
    elsif time_now >= @p0_start_date && time_now < @immersive_start_date
      return "Phase 0"
    elsif time_now >= @immersive_start_date && time_now < @immersive_start_date + 21
      return "Phase 1"
    elsif time_now >= @immersive_start_date + 21  && time_now < @immersive_start_date + 42
      return "Phase 2"
    elsif time_now >= @immersive_start_date + 42  && time_now < @immersive_start_date + 63
      return "Phase 3"
    elsif time_now >= @immersive_start_date + 63  && time_now < @graduation_date
      return "Find a damn job"
    end
  end

  def graduated?
    if Time.now.to_date >= @graduation_date
      return true
    end
    false
  end

end

class LocalCohort < Cohort
  def initialize(name, p0_start_date, city, students, email_list)
    super(name, p0_start_date)
    @city = city
    @students = students
    @email_list = email_list
  end

  attr_reader :city, :students, :email_list

  def add_student (new_student, new_student_email)
    @students << new_student
    @email_list << new_student_email
  end

  def remove_student (old_student, old_student_email)
    @students.delete (old_student)
    @email_list.delete (old_student_email)
  end

  def num_of_students
    @num_of_students = @students.length
  end

end


sf_copperheads = LocalCohort.new("Copperheads", "7 Sept 2015", "San Francisco", ["Mark", "Dan", "Jeff", "Hans"], ["coolguy@yahoo.com", "coolerguy@yeah.xyz", "goodtime@gmail.com", "superman@hotmail.com"])

sf_copperheads.add_student("Olivia Wilde", "markisgreat.com")
sf_copperheads.remove_student("Mark", "coolguy@yahoo.com")
