require 'prime'

INPUT = gets.chomp.to_i
$arr = Array.new(INPUT + 1, 0)

(2..INPUT).each do |i|
  current = i
  (2..(i + 1)).each do |j|
    while current % j == 0
      $arr[j] += 1
      current /= j
    end
  end
end

def num(m)
  $arr.select { |i| i >= m - 1 }.size
end

puts num(75) + num(25) * (num(3) - 1) + num(15) * (num(5) - 1) +
     num(5) * (num(5) - 1) * (num(3) - 2) / 2
