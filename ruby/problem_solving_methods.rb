
def search_array(array, num)

  (0..array.length).bsearch { |n| (num) <=> array[n] }

end

array = [1,2,5,7]

p search_array(array, 7)



=begin
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