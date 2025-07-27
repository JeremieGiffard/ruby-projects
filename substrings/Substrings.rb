# Implement a method #substrings that takes a word as the first argument
# and then an array of valid substrings (your dictionary) as the second argument.
# It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(stringToScan, dictionary)
  p "string parameter : " + stringToScan
  substringsFound = Hash.new

  dictionary.each { |word|
    #scan return every occurence of a string parameter
    occurence = stringToScan.downcase.scan(word).length
    if (occurence > 0)
      substringsFound[word] = occurence
    end
  }
  p "return substrings found :"
  p substringsFound
  return substringsFound
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
# { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
