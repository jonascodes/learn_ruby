class Book
    attr_reader :title
  
    def title=(new_title)
        doNotCapitalize = ['the', 'a', 'an', 'in', 'of', 'for', 'on', 'and', 'or']
        words = new_title.split(' ')
        words.each { |word|
            if not doNotCapitalize.include?(word)
                word[0] = word[0].upcase
            end
        }
        words[0][0] = words[0][0].upcase
        @title = words.join(' ')
    end
  
  end
