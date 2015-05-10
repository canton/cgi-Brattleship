#!/usr/bin/env ruby

def solve(r, c, w)
  (c / w) * r + w - 1
end

def test(r, c, w, expect)
  actual = solve r, c, w
  raise "Q:#{r}, #{c}, #{w} expect=#{expect} actual=#{actual}"
end

test 1, 8, 3, 5
test 1, 6, 4, 5
test 1, 7, 3, 5

case_count = gets.chomp.to_i
case_count.times { |cc|
  buffer = gets.chomp.split(' ')
  r = buffer[0].to_i
  c = buffer[1].to_i
  w = buffer[2].to_i

  ans = solve r, c, w
  puts "Case ##{cc+1}: #{ans}"
}
