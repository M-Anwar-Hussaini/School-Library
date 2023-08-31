require_relative 'book'
require_relative 'person'
class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    book.rentals << self unless book.rentals.include?(self)
    person.rentals << self unless person.rentals.include?(self)

    @date = date
    @book = book
    @person = person
  end

  def to_s
    "Date: #{date}, Book \"#{book.title}\" by #{book.author}"
  end
end
