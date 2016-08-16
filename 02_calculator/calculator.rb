# adding
def add(a,b)
  a + b
end

# substract
def subtract(a,b)
  a - b
end

# summing array
def sum(array)
  array.inject(0){|sum,x| sum + x }
end

# multiply
def multiply(a,b)
  a * b
end

# multiply multiple
def multiply_array(array)
  array.inject(:*)
end

def factorial(input)
  if input == 0
    1
  else
    x = [*1..input]
    x.inject(:*)
  end
end
