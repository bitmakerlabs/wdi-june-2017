
def find_longest(words)
  longest_word_so_far = ""
  words.each do |word|
    if word.length > longest_word_so_far.length
      longest_word_so_far = word
    end
  end

  return longest_word_so_far
end

animals = ["cow", "chicken", "sheep"]




def find_longest(words)
  sorted_words = words.sort_by do |word|
    word.length
  end
  puts sorted_words
  return sorted_words.last
end


puts find_longest(animals)

colours = %w(red blue green yellow chartreuse orange periwinkle tomato cobalt)
puts find_longest(colours)
