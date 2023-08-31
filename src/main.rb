require_relative 'student'
require_relative 'app'

def print_options
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

def list_all_books(books)
  print_elements(books)
end

def list_all_people(people)
  print_elements(people)
end

def create_new_person(people)
  people << add_person
end

def create_new_book(books)
  books << create_book
end

def create_new_rental(books, people, rentals)
  rentals << create_rental(books, people)
end

def list_all_rentals(rentals)
  print_rentals(rentals)
end

def main
  books = []
  people = []
  rentals = []

  loop do
    print_options
    number = gets.chomp.to_i

    case number
    when 1 then list_all_books(books)
    when 2 then list_all_people(people)
    when 3 then create_new_person(people)
    when 4 then create_new_book(books)
    when 5 then create_new_rental(books, people, rentals)
    when 6 then list_all_rentals(rentals)
    when 7
      puts 'Thank you for using this app'
      break
    else
      puts 'Wrong input value'
    end
  end
end
main
