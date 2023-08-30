require_relative 'student'

class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def member?(student)
    @students.include?(student)
  end

  def add_student(age, name = 'Unknown', parent_permission: true)
    new_student = Student.new(age, self, parent_permission, name)
    @students << new_student unless @students.member?(new_student)
  end
end
