#! /usr/bin/env ruby

if __FILE__ == $0
  testcases = gets.chomp.to_i
  for i in 1..testcases
    n = gets.chomp.to_i
    vector1 = gets.chomp.split.map { |c| c.to_i }
    vector2 = gets.chomp.split.map { |c| c.to_i }
    vector1 = vector1.sort
    vector2 = vector2.sort.reverse
    value = 0
    for j in 0...n
      value += vector1[j] * vector2[j]
    end
    puts "Case ##{i}: #{value}"
  end
end