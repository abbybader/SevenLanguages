puts "print the contents of an array of 16 numbers, four numbers at a time"

array = [*(1..16)]
puts "array is #{array}"

puts

stack = []
array.each { |n| 
  stack << n
  if (stack.size == 4)
    puts stack.join(", ")
    stack = []
  end
}

puts
puts "Trying another method"
array.each_with_index {|n, index| 
#  puts "number is #{n}"
#  puts "index is #{index}"
  if ( (index+1) % 4 == 0 )
    puts array[(index-3..index)].join(", ")
  end
}
