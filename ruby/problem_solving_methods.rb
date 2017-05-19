=begin
def search_array(array, num)

  (0..array.length).bsearch { |n| (num) <=> array[n] }

end

array = [1,2,5,7]

p search_array(array, 7)


def fib(num)
  arr = [0, 1]
  while num > arr.length
    new_array = arr.last(2).inject(0) {|sum, i|  sum + i }
    arr.push(new_array)
  end
  arr.rotate(0)
end

p fib(100).last == 218922995834555169026
=end
# insertion sort pseudocode
#-make an array of number and create a method that takes that array
#-the method should take the numbers inside the array and sort them from smallest to largest.

def insertion_sort(arr)
  for index in 0..(arr.length-1) #go through every index in the array staring from index 0 to -1
      num_in_arr = arr[index] #index one(and so forth) is the number we are moving and holding that number in the new value of num_in_arr
      one_less_index = index - 1#index -1 is now stored in one_less_index or the place holeder
      while one_less_index >= 0 && arr[one_less_index] > num_in_arr#while the place holeder is less then or equal to 0 and the number in array one less index is greater then the number in the arr
          arr[one_less_index+1] = arr[one_less_index]#shift number to array index + 1
          one_less_index = one_less_index - 1#and the new place holder will be index - 1
      end
      arr[one_less_index+1] = num_in_arr #puts the number in the new index
  end
p arr #prints out new array
end

array = [7, 2, 4, 1, 5, 3]

insertion_sort(array)