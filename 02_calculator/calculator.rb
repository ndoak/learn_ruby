def add(x, y)
x + y
end

def subtract(x, y)
x - y
end

def sum(array)
array.inject(0) { |sum, x| sum + x}
end
