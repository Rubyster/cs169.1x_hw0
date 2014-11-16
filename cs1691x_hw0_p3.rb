# Define a class BookInStock which represents a book with an isbn number, isbn,
# and price of the book as a floating-point number, price, as attributes.
# The constructor should accept the ISBN number (a string) as the first argument
# and price as second argument, and should raise ArgumentError
# (one of Ruby's built-in exception types) if the ISBN number is the empty string
# or if the price is less than or equal to zero.

# Include the proper getters and setters for these attributes.

# Include a method price_as_string that returns the price of the book
# with a leading dollar sign and trailing zeros, that is,
# a price of 20 should display as "$20.00" and a price of 33.8
# should display as "$33.80".

# ISBN standard: http://www.isbn.it/ISBN.aspx
class BookInStock
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end
  
  attr_reader :isbn, :price
  
  def isbn=(isbn)
    if isbn.empty? then raise ArgumentError.new('Every book must have ISBN code number.') end
    @isbn = isbn
  end
  
  def price=(price)
    if price <= 0 then raise ArgumentError.new('Every book must have price value.') end
    @price = price
  end
  
  def price_as_string
    format "$%.2f", @price
  end
  
end

# Testing BookInStock
book = BookInStock.new('9788889637159', 112.3110358)
puts "#{book.isbn} => #{book.price}"
puts "#{book.price_as_string}"