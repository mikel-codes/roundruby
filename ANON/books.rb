class Book
  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn=isbn; @price=price
  end

  def price=(n)
    @price=n
  end

  def price_in_cents
    Integer(@price * 100 + 0.4)
  end

  def price_in_cents=(l)
    @price = l / 100
  end
  
end

bk = Book.new("2323-3423-34", 23)
puts "book with isbn #{bk.isbn} sold for $#{bk.price}"
bk.price_in_cents = 398.42
puts "but now costs $#{bk.price}"


