# Pyramid Slide Down
# Problem URL: http://www.codewars.com/kata/pyramid-slide-down/ruby
# Description:
# 	Imagine that you have a plane pyramid built of numbers, like this one here:
# 			/3/
# 		  \7\ 4 
# 		 2 \4\ 6 
# 		8 5 \9\ 3
# Let's say that the 'slide down' is a sum of consecutive numbers from the top to the bottom of the pyramid. As you can see, the longest 'slide down' is 3 + 7 + 4 + 9 = 23

# Your task is to write a function longestSlideDown (in ruby: longest_slide_down) that takes a pyramid representation as argument and returns its' longest 'slide down'.

# longest_slide_down([[3], [7, 4], [2, 4, 6], [8, 5, 9, 3]])
# # => 23

def longest_slide_down(a)
  a.reverse!
  1.upto(a.size-1) do |i|
    a[i].each_index { |j| a[i][j] += [a[i-1][j], a[i-1][j+1]].max }
  end
  a.last[0]
end


