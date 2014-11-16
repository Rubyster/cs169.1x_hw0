# Define a method sum which takes an array of integers as an argument
# and returns the sum of its elements.

# For an empty array it should return zero.
def sum int_ary
  return 0 if int_ary.empty?
  int_ary.reduce(:+)
end

# Define a method max_2_sum which takes an array of integers as an argument
# and returns the sum of its two largest elements.

# For an empty array it should return zero.

# For an array with just one element, it should return that element.
def max_2_sum int_ary
  sum(int_ary.sort.last(2))
end

# Define a method sum_to_n? which takes an array of integers and an additional 
# integer, n, as arguments and returns true if any two distinct elements in the
# array of integers sum to n.

# An empty array or single element array should both return false.
def sum_to_n?(int_ary, n)
  sum_of_n = int_ary.combination(2).to_a.any? { | sub_ary | sum(sub_ary) == n }
  sum_of_n && int_ary.length > 1
end

# Testing

# sum
raise 'sum([]) != 0' unless sum([]) == 0
raise 'sum([1,2,3,4]) != 10' unless sum([1,2,3,4]) == 10

# max_2_sum
raise 'max_2_sum([]) != 0' unless max_2_sum([]) == 0
raise 'max_2_sum([0]) != 0' unless max_2_sum([0]) == 0
raise 'max_2_sum([15]) != 15' unless max_2_sum([15]) == 15
raise 'max_2_sum([1,2,3,4]) != 7' unless max_2_sum([1,2,3,4]) == 7
raise 'max_2_sum([1,4,3,2]) != 7' unless max_2_sum([1,4,3,2]) == 7

# sum_to_n?
raise 'sum_to_n([], 3) != false' unless sum_to_n?([], 3) == false
raise 'sum_to_n([1], 3) != false' unless sum_to_n?([1], 3) == false
raise 'sum_to_n([1,2,3,4], 3) != true' unless sum_to_n?([1,2,3,4], 3) == true