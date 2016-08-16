# Method to convert F to C
def ftoc(degrees)
  degrees = (degrees - 32) * 5.0/9
  degrees.to_i
end

# Method to convert C to F

def ctof(degrees)
  degrees = 32 + degrees* 9/5.0
  degrees.to_i
end
