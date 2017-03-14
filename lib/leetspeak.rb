class String
  define_method(:leetspeak) do
    new_word = []
    split_word = self.split("")
    split_word.each() do |letter|
      if letter == "e"
        new_word.push("3")
      elsif letter == "o"
        new_word.push("0") 
      else
        new_word.push(letter)
      end
    end
    new_word.join()
  end
end
