puts "I'm thinking of a number between 1 and 10..."
number = rand(10) + 1

puts "Make a guess!"
guess = gets.chomp.to_i

while ( number != guess )
  if ( guess < number )
    puts "Too low!"
  else
    if ( guess > number )
      puts "Too high!"
    end
  end
  guess = gets.chomp.to_i
end

puts "Just right!"
