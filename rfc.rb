
require 'byebug'

# num = number of fences
# input = word to be ciphered

def rfc(num, input)
  n = Array.new(num){[]}
  h = input.chars

  num.times do |x|
    n[x].push(h[0])
    h.shift
  end


  second_index = n.size - 2
    last_index = n.size - 1

  while h.size > 0

    second_index.downto 0 do |i|
      n[i].push(h[0])
      h.shift
    end

    1.upto last_index do |y|
      n[y].push(h[0])
      h.shift
    end
  end

  result = n.flatten.join
  puts result
end


byebug


puts "hello"
