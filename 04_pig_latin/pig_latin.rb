#write your code here

#sounds to detect
special = ['qu']

def findFirstVowel(word)
    vowels = ['a','e','i','o','u','A','E','I','O','U']
    i = 0
    while (not vowels.include?(word[i])) && i < word.length 
        i = i + 1
    end
    #check if first vowel is 'u'. In that case, if its preceeded by a 'q', it should not count as a vowel but should be ignored.
    if word[i] == 'u' && word[i-1] == 'q'
        return findFirstVowel(word[0..i-1] + 'q' + word[i+1..-1])
    else
        if vowels.include?(word[i]) 
            return i
        else
            return -1
        end
    end
end

def pig_latin word
    firstVowel = findFirstVowel(word)
    if firstVowel == 0
        return word + "ay"   
    elsif firstVowel > 0
        return word[firstVowel..-1] + word[0..firstVowel-1] + "ay"
    else 
        return word
    end
end

def translate str
    p = str.index(' ') 
    if p.nil?
        return pig_latin(str)  
    else
        return pig_latin(str[0..p-1]) + ' ' + translate(str[p+1..-1])        
    end
end