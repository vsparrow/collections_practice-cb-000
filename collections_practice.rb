require "pry"
# Build a method sort_array_asc that takes in an array of integers and
# returns a copy of the array with the integers in ascending order.
def sort_array_asc(array)
  array.sort
end

#
# Build a method sort_array_desc that takes in an array of integers and
# returns a copy of the array with the integers in descending order.
# Remember that .sort takes a block in which you can specify how you want your array sorted.
def sort_array_desc(array)
  array.sort do |a,b|
    b <=> a
  end # sort
end


# Build a method sort_array_char_count that takes in an array of strings and
# returns a copy of the array with the strings ordered in ascending order by length.
# Remember that .sort takes a block in which you can specify how you want your array sorted.
def sort_array_char_count(array)
  array.sort { |a, b| a.length <=> b.length }
end

# Build a method swap_elements that takes in an array and swaps the second and third elements.
# Remember that array indices start at 0, so the second element has an index of 1 and the third element has an index of 2.
def swap_elements(array)
  second = array[1]
  third = array[2]
  array[1] = third
  array[2] = second
  array
end

# Advanced: Try building a method swap_elements_from_to that takes in three arguments, array, index, destination_index,
# that will allow you to specify the index of the element you would like to move to a new index. So:
def swap_elements_from_to(array,index,destination_index)
  a = array[index]
  b = array[destination_index]
  array[index] = b
  array[destination_index] = a
  array
end

# Build a method reverse_array that takes in an array of integers and
# returns a copy of the array with the elements in reverse order.
def reverse_array(array)
  array.reverse
end

# Build a method called kesha_maker that takes in an array of strings
# and replaces the third character in each string with a $ ("dollar sign")—Ke$ha style.
# Use the .each method to iterate and build a new array to return at the end of your method
def kesha_maker(array)
  collection = []
  array.each do |string|
    tempstr = string.split ""
    tempstr[2] = "$"
    tempstr = tempstr.join
    collection.push(tempstr)
    # binding.pry
  end
  collection
end

# Build a method find_a that returns all the strings in the array passed to it that start_with? (hint) the letter "a".
# You'll want to use a high level iterator for this that finds, selects, or detects elements based on a condition.
def find_a(array)
  array.select {|string| string.start_with?("a")}
end

# Build a method sum_array that adds together all of the integers in the array and returns their sum.
def sum_array(array)
  i = 0
  sum = 0
  while i < array.length
    sum += array[i]
    i += 1
  end
  sum
end

# Advanced: Try using the .inject method here.
def sum_array_inject(array)
  array.inject {|sum, element| sum + element}
end

# Build a method that adds an "s" to each word in the array
# except for the second element in the array ("feet" is already plural).
def add_s(array)
  array.each_with_index do |word,index|
    if index != 1
      word << "s"
    end
  end
  array
end

# Advanced: Iterators in Ruby are chainable,
# see if you can use .each_with_index in addition to .collect to solve this one in an elegant way.
def add_s_advanced(array)
  array.each_with_index.collect { |word,index| index == 1 ? word : word << "s" }
end


ar = [4,6,3,1,2,7]
ars = ["hi","a","cool","guy","awesome"]
ars2 = ["string1","string2","string3"]
# binding.pry
# **** write the tests for the advanced methods
# def swap_elements_from_to(array,index,destination_index)
# def sum_array_inject(array)
# def add_s_advanced(array)
