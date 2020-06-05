require "pry"
def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  min_numbers = []
  count = 0
  while count < src.length do
    smallest = src[count][0]
    puts smallest
    inner_count = 0
    binding.pry
    while inner_count < src[count][inner_count] do
      if src[count][inner_count] < smallest
        puts smallest
        binding.pry
        smallest = src[count][inner_count]
      end
      inner_count += 1
    end
    count += 1
    min_numbers << smallest
  end
  min_numbers
end

array = [[1, 2, 5],[4, 2, 9]]

find_min_in_nested_arrays(array)
