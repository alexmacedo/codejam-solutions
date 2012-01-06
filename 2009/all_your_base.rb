#! /usr/bin/env ruby

# Round 1C 2009
# Problem A. All Your Base
# url: http://code.google.com/codejam/contest/dashboard?c=189252#s=p0

if __FILE__ == $0
  t = gets.chomp.to_i
  t.times do |i|
    line = gets.chomp
    map = Hash.new
    line.chars.each_with_index do |c, index|
      if !map.has_key?(c)
        if map.empty?
          map[c] = 1
        elsif map.length == 1
          map[c] = 0
        else
          map[c] = map.length
        end
      end
    end
    total = 0
    power = 0
    base = map.length > 2 ? map.length : 2
    line.reverse.each_char do |c|
      total += (base ** power) * map[c]
      power += 1
    end
    puts "Case ##{i+1}: #{total}"
  end
end