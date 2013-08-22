filename = nil
occur    = {}

def getFilePrompt
  puts "please enter a text file"
  print "> "
  gets.chomp
end

filename = ARGV.first ? ARGV.first : filename = getFilePrompt

until (filename.match(/.txt$/))
  puts "Not a text file."
  filename = getFilePrompt
end

text = File.read(filename)
text.gsub("\n", " ")
    .split(" ")
    .each { |word| occur[word] = occur[word] ?  occur[word] + 1 : 1 }

occur = occur.sort_by { |word, num| [num, word]}
occur.each { |pair| puts "#{pair[0]}: #{pair[1]}" }

# type in test.txt at command prompt



