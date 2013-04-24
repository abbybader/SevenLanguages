puts "Tell me what file to load"
file = gets.chomp

puts "Tell me what string you're looking for"
string = gets.chomp

myfile = File.open(file)
puts myfile.select { |line| line.include?(string) }
