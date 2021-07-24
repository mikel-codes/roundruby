def mixed_case(string)
  string.downcase.gsub(/\b\w/) { |first| first.upcase}
end

puts mixed_case("StonE colD")

def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    puts "#{match.pre_match}->#{match[0]}-<#{match.post_match}"
  else
    puts "no match"
  end
end

show_regexp("Hello word", Regexp.new("el"))
show_regexp('Fats Waller', /z/)

def surround(word, pad=word.length/2)
  "[" * pad + word +  "]" * pad
end

puts surround("Transformers")




