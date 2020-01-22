#write your code here

def echo str
    return str
end

def shout str
    return str.upcase
end

def repeat (str, r = 2)
    result = str
    (r-1).times do
        result = result + " " + str
    end
    return result
end

def start_of_word str, c
    return str[0,c]
end

def first_word str
    return str.split(" ")[0]
end