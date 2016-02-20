def add(first,second)
sum = first + second
end

def subtract(first,second)
difference = first-second
end

numbers = []

def sum(numbers)
numbers.inject(0) {|sum,n| sum+n}
end

def multiply(numbers)
  numbers.inject {|product,n| product*n}
end

def power(first,second)
  first**second
end

def factorial(number)
  factors = Array.new
  if number==0
    return 0
  else
    for num in 1..number
      factors.push(num)
    end
    factors.inject {|product,n| product*n}
  end
end
