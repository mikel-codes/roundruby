def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    puts "#{match.pre_match} .. #{match.post_match} ->#{match[0]}"
  else
    puts "no match"
  end
end

show_regexp("very lovely", /y/)
show_regexp("times and seasons", Regexp.new("dp"))
show_regexp("enough", %r{mm/dy})

str = "This is today"
show_regexp(str, /^is/)
show_regexp(str, /\AThis/)
show_regexp(str, /\Ato/)
show_regexp(str, /\Zy/)
show_regexp(str, /today$/)
show_regexp("holla jungle e=beats", /[aeiou]/)
show_regexp("Price $280", /[>.*@$]/)
show_regexp("Princeton Hotels", /\bte/)
show_regexp("Princeton Hotels", /\Bte/)
show_regexp("The mooon is made of cheese", /[aeiou]{1,5}/)

lo = 'the red ball give you'
show_regexp(lo, /red (all|give) you/)
a = 'the red angry sky'
show_regexp(a, /red (ball|angry) sky/)

def mixed_case(a)
  puts "what is your name"
  a = gets
  aeons = a.downcase.gsub!(/\b\w/) {|match| match.upcase}
  puts aeons
end
mixed_case(a)
replacement = {"cats" => "earth Victory", "lotto" => "dollars"}
replacement.default = "no subject"
print "cats; & dogs; liason".gsub(/\w+/, replacement)
puts
puts "fred:smith".gsub(/(\w+):(\w+)/, '\1:::\2')
puts "godo".gsub(/(.)(.)/, '\2\1')

