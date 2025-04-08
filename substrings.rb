def substrings (string, array)
  string_array = string.downcase.split(/(\W)/)
  result = {}
  string_array.each do |word|
    if array.include?(word)
      result[word] = array.count(word)
    end
  end
  return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
