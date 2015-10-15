require 'pry-byebug'

require_relative 'library'
require_relative 'book'
require_relative 'person'


require_relative 'methods'


library = Library.new name: "CodeClan Library"

library.add_person Person.new name: 'fred'  
library.add_person Person.new name: 'wilma' 
library.add_person Person.new name: 'barney' 
library.add_person Person.new name: 'betty' 
library.add_book Book.new title: "the hobbit", genre: "fantasy" 
library.add_book Book.new title: "feersum endjinn", genre: "science Fiction" 
library.add_book Book.new title: "histories", genre: "history" 
library.add_book Book.new title: "to kill a mockingbird", genre: "fiction" 
library.add_book Book.new title: "a brief history of time", genre: "non-fiction"  

























response = menu

until response == 0

  case response
  when 1
    create_book(library)
  when 2
    create_person(library)
  when 3
    list_books(library)
  when 4
    list_people(library)
  when 5
    lend_book(library)
  when 6
    return_book(library)
  when 7
    # TODO: "7. List Borrowed Books"
  else
    puts "invalid option"
  end


  puts "Press enter to continue"
  gets
  response = menu

end





binding.pry;''