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
