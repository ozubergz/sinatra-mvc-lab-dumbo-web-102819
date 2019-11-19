class PigLatinizer

    def piglatinize(words)
        arr = words.split(" ")
        result = arr.map do |word|
            if check_vowel(word)
                word +  "way"
            else
                i = index_consonant(word)
                front_str = word[i..word.size]
                end_str = word[0...i]
                front_str + end_str + "ay"
            end
        end
        result.join(" ")
    end

    def check_vowel(word)
        #  word.downcase[0].match?(/[aeiou]/)
        word.downcase[0] =~ /[aeiou]/
    end

    def index_consonant(word)
        word.split("").each_with_index do |letter, indx|
        if letter.downcase =~ /[aeiou]/
            return indx
        end
        end
    end

end