#! /usr/bin/env ruby

# Round 1A 2008
# Problem A. Minimum Scalar Product
# url: http://code.google.com/codejam/contest/dashboard?c=32016#s=p0

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