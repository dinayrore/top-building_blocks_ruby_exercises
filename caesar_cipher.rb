def cipher(string, shift) # define a method, cipher that takes two arguements
  char_array = string.chars # chars is a method that seperates my string into individual characters and stores those values in an array --> ["H", "e", "l", "l", "o", "!"]
  char_array.map do |char| # changes my array into an Enumerator, allows me to go through each individual character in my newly developed array thanks to the chars method from before
    if /[A-Za-z]/.match(char) # if the character in each index matches the value A-Z or a-z then do the following
      shift.times do # shift is the variable I had defined in the beginning, times is an integer method that does something the interger amount of times
        char.next! # next is a method for strings it takes a character and moves it to the next character in the alphabet; because I used times above, it will move the given character shift amount of times.
      end # end times block method
      char # the individual character in its shifted state
    end # end if statement
  end # end map of char_array
  message = char_array.join # set char_array to a variable, message, use the string method join to take all of the characters in the array and rejoin them back into a string
  puts message # outputs the message variable
end # end of method block cipher

def main
  print 'Provide some text to cipher: ' # outputs the string given
  string = gets.chomp # gets user input and stores it in the variable string
  print 'Choose an integer value to shift your message: ' # outputs the string given
  shift = gets.chomp.to_i # gets user input and stores it in the variable shift as an integer (.to_i)
  cipher(string, shift) # call on the method cipher and pass the variables string and shift as arguements
end


main if __FILE__ == $PROGRAM_NAME # will always run the main method of a ruby file first if the name of the file is equal to the program name run.

