# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  !!(s =~ /\A(?=[a-z])[^aeiou]/i)
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  return false unless s =~ /\A[01]+\z/
  s.to_i(2) % 4 == 0
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, "Invalid ISBN" if isbn.empty?
    raise ArgumentError, "Invalid price" if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end
end