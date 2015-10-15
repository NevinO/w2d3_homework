class Person

  attr_reader :name, :books

  def initialize(options={})
    @name = options[:name]
    @books = {}
  end

  def borrow(book)
    books[book.title] = book
  end

  def return(book_title)
  books.delete(book_title)
  end

  def list_books
    if books.empty?
      "There was a fire sale"
    else
      books.map { |key, book| book.pretty_string }.join("\n")
    end
  end

  def pretty_string
    "#{name} has #{books.size} book#{'s' unless books.size == 1} borrowed from the library."
  end
end