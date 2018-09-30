# string.chars seperates my string into individual characters and stores those values in an array --> ["H", "e", "l", "l", "o", "!"]
# .map changes converts my string into an Enumerator
# shift.times { char.next! } if /[A-Za-z]/.match(char) will move each character in your array of chars the number of times you asked to shift, IF those characters match A-Za-z
# .join takes the array of strings and makes it a string again

def cipher(string, shift)
  message = (string.chars.map do |char|
    shift.times { char.next! } if /[A-Za-z]/.match(char)
    char[0]
  end).join
  puts message
end

def main
  print 'Provide some text to cipher: '
  string = gets.chomp
  print 'Choose an integer value to shift your message: '
  shift = gets.chomp.to_i
  cipher(string, shift)
end


main if __FILE__ == $PROGRAM_NAME
