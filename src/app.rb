require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'

def list_books(books)
  books.each { |book| puts book }
end

def print_elements(list)
  if list.empty?
    puts 'The list is empty.'
  else
    list.each { |item| puts item }
  end
  puts
end

def create_book
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  puts "#{title} was successfully created."
  puts
  Book.new(title, author)
end

def create_student
  print 'Age: '
  age = gets.chomp.to_i
  print 'Name: '
  name = gets.chomp
  print 'Has parent permission? [Y/N]: '
  parent_permission = gets.chomp.downcase == 'y'
  puts 'Person created successfully.'
  puts
  Student.new(age, nil, parent_permission: parent_permission, name: name)
end

def create_teacher
  print 'Age: '
  age = gets.chomp.to_i
  print 'Name: '
  name = gets.chomp
  print 'Specialization: '
  specialization = gets.chomp
  puts "Person created successfully\n"
  puts
  Teacher.new(age, specialization, name: name)
end

def add_person
  print 'Do you want to create a student(1) or a teacher(2)? [Input the number]: '
  choice = gets.chomp.to_i
  if choice == 1
    create_student
  elsif choice == 2
    create_teacher
  end
end

def create_rental(books, people)
  puts 'Select a book from the following list by number: '
  books.each_with_index { |book, index| puts "#{index}) #{book}" }
  print ': '
  book_index = gets.chomp.to_i
  puts

  puts 'Select a person from the following list by number: '
  people.each_with_index { |person, index| puts "#{index}) #{person}" }
  print ': '
  person_index = gets.chomp.to_i
  puts

  print 'Date: '
  date = gets.chomp
  puts 'Rental created successfully.'
  puts

  Rental.new(date, books[book_index], people[person_index])
end

def print_rentals(rentals)
  print 'ID of person: '
  puts 'Rentals: '
  id = gets.chomp.to_i
  rentals.each do |rental|
    puts rental if rental.person.id == id
  end
end
