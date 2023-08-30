require_relative 'rental'
class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def member?(rental)
    @rentals.include?(rental)
  end

  def add_rental(rental)
    @rentals << rental unless member?(rental)
  end
end
