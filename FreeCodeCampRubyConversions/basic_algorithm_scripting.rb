#These methods are the answers to the the Basic Algorithm Scripting section
#but in Ruby instead of Javascript

#1 Reverse a string
def reverse(str)
  str.reverse
end

#puts reverse("This")

#2 Factorial a given number

def fn(num)
  array = []
  product = 1
  until num == 0
    array << num
	num -= 1
  end
  array.each do |num|
	product = num * product
  end
return product
end

# or using recursion

def fn(num)
  return 1 if num == 0
  num * fn(num - 1)
end

# or another way

def fn(num)
  total = 1
  while num > 0
    total *= num
    num -=1
  end
  total
end

#p fn(5)

#3 Palindrome

def rev(str)
  new_string = str.gsub(/(\s|,|\.)/,"")
  newer_string = str.gsub(/(\s|,|\.)/,"").split("").reverse.join("")
  p newer_string === new_string
end

#rev("never odd or even")

#4 Longest word in a string

def longest(str)
  count = 0
  str.split(" ").each {|word| count = word.length if word.length > count}
  p count
end

#longest("this is a sentence with sentence as the longestish word jk it's actually longestish")

#5 Capitalize first word in a string

def cap(str)
  str.split(" ").each {|word| word.capitalize!}.join(" ")
end

#p cap("let's SEE if this works")

#6 Biggest number in array of arrays of numbers
def biggest_number(num)
  numbers = []
  num.each do |array_num|
    biggest = 0
    array_num.each do |num|
      if num > biggest
        biggest = num
      end
    end
    numbers << biggest
  end
  p numbers
end

# biggest_number([[4, 5, 1, 3], [13, 27, 18, 26], [32, 35, 37, 39], [1000, 1001, 857, 1]])

#7 Does target match end of string

def sub_str_tar(str, target)
  #p str[((str.length - 1) - (target.length - 1))..(str.length - 1)] == target
  #or a shorter version
  p str.slice(str.length - target.length, target.length)
end

# sub_str_tar("He has to give me a new name", "me")

#7 Repeat a given string the given number of times

def times_string(str, num)
  p str * num
end

# times_string("abc", 4)

#8 
#Truncate a string (first argument) if it is longer than the given maximum string length (second argument).
#Return the truncated string with a ... ending.

#Note that inserting the three dots to the end 
#will add to the string length.

#However, if the given maximum string length num 
#is less than or equal to 3, then the addition 
#of the three dots does not add to the string length in determining the truncated string.

def string_sentence(str, num)
  if str.length > num
    if num <= 3
      return str[0..num - 1] << "..."
    end
    return str[0..num - 4] << "..."
  end
end

# p string_sentence("A-", 1)

#9 Write a function that splits an array (first argument)
#into groups the length of size (second argument) and 
#returns them as a two-dimensional array.

def splitting(arr, size)
  total = 0
  final_array = []
  until total >= arr.length
    part_of_arr = arr[total..total + 1]
    final_array << part_of_arr
    total += size
  end
  return final_array
end

#p splitting(["a", "b", "c", "d"], 2)

#10 Take give number of elements from array

def arr_with_given(array, num)
  array.take(array.length - num)
end

#arr_with_given([1,2,3,4,5], 1)

#11 Return true if the string in the first element of the
#array contains all of the letters of the string in the second element of the array.

def mutation(arr)
  first = arr[0]
  second = arr[1]
  count = 0
  first.downcase.split("").each do |letter1|
    second.downcase.split("").each do |letter2|
      if letter1 == letter2
        count += 1
      end
    end
  end
  return count
end

# p mutation(["Mary", "Army"])

#12 Filter an array of all false values, leaving only true values

def only_true(array)
  array.reject{|element| element == false || element == nil}
end

# p only_true(["five", 9, nil, false, 2 > 3])

#13 Where do I belong- Return the lowest index at which a value (second argument)
#should be inserted into an array (first argument) once it has been sorted.

def get_index(arr, num)
  arr.sort.each_with_index do |arr_num, index| 
    if arr_num > num
      return index
    else
      return arr.length
    end
  end
end
p get_index([2, 5, 10], 15)

#14 caesar cipher using only capitals

def c_c(str)
  final_string = []
  letters = ("A".."Z").to_a
  str.split("").each do |letter|
    if letters.include?(letter)
      if letters.index(letter) + 13 < 26
        final_string << letters[letters.index(letter) + 13]
      else
      final_string << letters[letters.index(letter) - 13]
    end
    else
      final_string << letter
    end
  end
  return final_string.join("")
end

# c_c("GUR DHVPX OEBJA QBT WHZCRQ BIRE GUR YNML SBK,")
