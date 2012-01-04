#! /usr/bin/env ruby

# Round 1C 2010
# Problem A. Rope Intranet
# url: http://code.google.com/codejam/contest/dashboard?c=619102#s=p0

if __FILE__ == $0
  t = gets.chomp.to_i
  t.times do |i|
    n = gets.chomp.to_i
    wires = []
    n.times do |i|
      wire = gets.chomp.split(" ").map {|c| c.to_i}
      wires << wire
    end
    intersects = 0
    (0...n-1).each do |j|
      (j...n).each do |k|
        if (wires[j][0] < wires[k][0] and wires[j][1] > wires[k][1]) or
           (wires[j][0] > wires[k][0] and wires[j][1] < wires[k][1])
          intersects += 1
        end
      end
    end
    puts "Case ##{i+1}: #{intersects}"
  end
end