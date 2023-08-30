require_relative 'nameable'

class Decorator
  attr_reader :nameable

  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name
    @nameale.correct_name
  end
end
