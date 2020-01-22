#write your code here
def add a,b
    return a+ b
end

def subtract a,b
    return a - b
end

def sum myArray
    mySum = 0
    myArray.each do |a| 
        mySum = mySum + a
    end
    return mySum
end

def multiply (*a)
    p = 1
    a.each do |n| 
        p = p * n
    end
    return p
end

def power a,b
    return a**b
end

def factorial (n)
    result = 1
    n.times do |i|
        puts i
        result = result * (i+1)
    end
    return result
end
