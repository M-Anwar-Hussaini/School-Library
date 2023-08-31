require_relative 'student'
require_relative 'app'

def print_message
  puts 'Please choose an option by entering a number: '
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
  print ': '
end

def main
  books = []
  people = []
  rentals = []
  number = 0
  until number == 7
    print_message
    number = gets.chomp.to_i
    case number
    when 1 then print_elements(books)
    when 2 then print_elements(people)
    when 3 then people << add_person
    when 4 then books << create_book
    when 5 then rentals << create_rental(books, people)
    when 6 then print_rentals(rentals)
    when 7 then break
    else
      puts 'Wrong input value'
    end
  end
end

main
