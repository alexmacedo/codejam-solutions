#! /usr/bin/env ruby

# Qualification Round 2009
# Problem A. Alien Language
# url: http://code.google.com/codejam/contest/dashboard?c=90101#s=p0

if __FILE__ == $0
  l, d, n = gets.chomp.split(" ").map { |d| d.to_i }
  words = []
  d.times do |i|
    words << gets.chomp
  end
  n.times do |i|
    pattern = gets.chomp
    pattern = pattern.gsub('(', '[')
    pattern = pattern.gsub(')', ']')
    pattern = Regexp.new(pattern)
    k = 0
    words.each do |w|
      k += 1 if w =~ pattern
    end
    puts "Case ##{i+1}: #{k}"
  end
end