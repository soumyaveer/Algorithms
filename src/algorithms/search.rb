# Search algorithms
module Algorithms
  class Search
    def binary(numbers, key)
      min = 0
      max = numbers.length - 1
      while min <= max
        mid = ( min + max )/2
        return true if numbers[mid] == key
        if numbers[min] < key
          min = mid + 1
        elsif numbers[max] > key
          max = mid - 1
        end
      end
       false
    end
  end
end