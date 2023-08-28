require_relative 'person'
class Teacher < Person
  attr_accessor :specialization

  def initialize(id, age, specialization, parent_permission: true, name: 'Unknown')
    super(id, age, parent_permission, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
