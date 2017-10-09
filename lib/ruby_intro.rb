# Part 1

def sum arr
  arr.inject(0,:+)
end

def max_2_sum arr
  if arr.length<3
  	return arr.inject(0,:+)
  else
  	a = arr.max
  	b = arr.delete_at(arr.find_index(arr.max))
  	return a + arr.max
  end
end

def sum_to_n? arr, n
  if arr.length<2 
  	return false
  end
  arr[0..-2].each do |x|
  	if arr[arr.find_index(x)+1..-1].include?(n-x)
  		return true
  	end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.empty? then
  	return false  
  end
  s[0].downcase =~ /\A(?=[^aeiou])(?=[a-z])/i  
end

def binary_multiple_of_4? s
  if s.delete('01') != '' || s==''
  	return false
  end
  s.to_i(2)%4 == 0
end

# Part 3

class BookInStock
	attr_accessor :price, :isbn
	def initialize (isbn,price)
		@price = price
		@isbn = isbn
		raise ArgumentError.new unless @isbn!="" 
		raise ArgumentError.new unless @price>0
	end

	def price_as_string 
		number_to_currency(@price)
	end

	def number_to_currency(value)
		"$" + '%.2f' % value
	end
end
