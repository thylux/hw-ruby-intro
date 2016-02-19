# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0) {|sum, n| sum + n } 
end

def max_2_sum arr
  arr.sort.reverse.slice(0,2).inject(0) {|sum, item| sum += item }
end

def sum_to_n? arr, n
  if arr.length!=0
    combination = arr.combination(2).to_a.map { |pair| pair[0] + pair[1]  }
    find = combination.select { |x| x==n  }
    find.length>0
  else
    false
  end
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  alphabet_regex = /^[a-z]/i
  consonant_regex = /^[^aeiou]/i
  
  s =~ alphabet_regex and s =~ consonant_regex ? true : false
end

def binary_multiple_of_4? s
  binary_regex = /^[10]+$/
  ( s =~ binary_regex ) ? s.to_i(2) % 4 == 0 : false
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn == ''
    raise ArgumentError if price <= 0
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    sprintf("$%0.2f", @price)
  end
end