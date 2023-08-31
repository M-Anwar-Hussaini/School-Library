require_relative 'person'
class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, parent_permission: true, name: 'Unknown')
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_s
    "[Teacher] Name: #{name}, ID: #{id}, Age: #{age}"
  end
end
