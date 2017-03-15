class String
  define_method(:leetspeak) do
    new_word = []
    last_letter = " "
    split_word = self.split("")
    split_word.each() do |letter|
      if letter == "e" || letter == "E"
        new_word.push("3")
      elsif letter == "o" || letter == "O"
        new_word.push("0")
      elsif letter == "I"
        new_word.push("1")
      elsif letter == "s"
        if last_letter == " " # As it iterates through, if the last letter thru the each loop is a " " (which is what separates words (it is also declared as " " at the beginning so we start that way)), don't change the first letter.
          new_word.push(letter)
        else
          new_word.push("z")
        end
      else
        new_word.push(letter)
      end
    last_letter = letter # Changes everytime through the loop to be the "last letter" ran thru the loop
    end
    new_word.join()
  end
end
