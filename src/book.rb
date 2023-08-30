require_relative 'rental'
class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def member?(date, person)
    new_rental = Rental.new(date, self, person)
    @rentals.include?(new_rental)
  end

  def add_rental(date, person)
    new_rental = Rental.new(date, self, person)
    @rentals << rental unless member?(new_rental)
  end
end
