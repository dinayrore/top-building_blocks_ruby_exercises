# substrings application
def substrings(word, dictionary)
  results = Hash.new
  words = word.downcase.gsub(/[^a-z0-9\s]/i, '').split(' ')
  words.each do |word|
    if dictionary.include?(word) && results.key?(word) == false
      results[word] = 1
    end
  end
  puts results
end

def main
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  print "Provide a word to look up in the dictionary: "
  word = gets.chomp
  substrings(word, dictionary)
end


main if __FILE__ == $PROGRAM_NAME
