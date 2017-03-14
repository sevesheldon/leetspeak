class String
  define_method(:leetspeak) do
    new_word = []
    split_word = self.split("")
    split_word.each() do |letter|
      if letter == "e" || letter == "E"
        new_word.push("3")
      elsif letter == "o" || letter == "O"
        new_word.push("0")
      elsif letter == "I"
        new_word.push("1")    
      else
        new_word.push(letter)
      end
    end
    new_word.join()
  end
end
