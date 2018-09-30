# run caesar_cipher, stock_picker, or substrings application
def main
  print "Which program would you like to run? "
  program = gets.chomp
  system("ruby #{program}.rb")
end

main if __FILE__ == $PROGRAM_NAME
