#!/usr/bin/env ruby

def solve(r, c, w)
  last_row = (c - w - 1) / w + w + 1
  other_rows = (c / w) * (r - 1)
  other_rows + last_row
end

def test(r, c, w, expect)
  actual = solve r, c, w
  raise "Q:#{r}, #{c}, #{w} expect=#{expect} actual=#{actual}" if actual != expect
end

test 1, 4, 2, 3
test 1, 7, 7, 7
test 2, 5, 1, 10
test 1, 8, 3, 5
test 3, 8, 3, 9
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
