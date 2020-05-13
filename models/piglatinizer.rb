class PigLatinizer

    def piglatinize(input_str)
        input_str.split(" ").map{ |word| piglatinize_word(word)}.join(" ")
      end
    
    #   privatee
    
      def vowel?(char)
        char.match(/[aAeEiIoOuU]/)
      end
    
      def piglatinize_word(word)
        # word starts with vowel
        if vowel?(word[0])
          word + "way"
        else
        # word starts with one or more consonants
          vowel_index = word.index(/[aAeEiIoOuU]/)
          consonants = word.slice(0..vowel_index-1)
          word_leftover = word.slice(vowel_index..word.length)
          word_leftover + consonants + "ay"
        end
      end

      def nato(w)
        letters =  {
          "A"=>"Alpha",  "B"=>"Bravo",   "C"=>"Charlie",
          "D"=>"Delta",  "E"=>"Echo",    "F"=>"Foxtrot",
          "G"=>"Golf",   "H"=>"Hotel",   "I"=>"India",
          "J"=>"Juliett","K"=>"Kilo",    "L"=>"Lima",
          "M"=>"Mike",   "N"=>"November","O"=>"Oscar",
          "P"=>"Papa",   "Q"=>"Quebec",  "R"=>"Romeo",
          "S"=>"Sierra", "T"=>"Tango",   "U"=>"Uniform",
          "V"=>"Victor", "W"=>"Whiskey", "X"=>"X-ray",
          "Y"=>"Yankee", "Z"=>"Zulu"}
        
        word = w.upcase.split('')
        split = word.map { |let| letters[let] }
        return split.join(' ')
        
      end

end 