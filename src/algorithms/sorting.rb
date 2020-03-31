# Bubble sort algorithm
module Algorithms
  class Sorting
    attr_accessor :numbers

    def initialize(input)
      @numbers = input
    end
    def bubble
      i = 0
      while i < numbers.length
        j = i + 1
        while j < numbers.length
          if numbers[i] > numbers[j]
            temp = numbers[i]
            numbers[i] = numbers[j]
            numbers[j] = temp
          end
          j += 1
        end
        i += 1
      end
      numbers
    end

    def selection
      i = 0
      while i < numbers.length
        j = i + 1
        min = numbers[i]
        while j < numbers.length
          if min > numbers[j]
            min = numbers[j]
            min_index = j
          end
          j += 1
        end
        temp = numbers[i]
        numbers[i] = numbers[min_index]
        numbers[min_index] = temp
        i += 1
      end
      numbers
    end

    def insertion
      i = 0
      while i < numbers.length
        j = i
        while j.positive? && numbers[j - 1] > numbers[j]
          temp = numbers[j]
          numbers[j] = numbers[j - 1]
          numbers[j - 1] = temp
          j -= 1
        end
        i += 1
      end
      numbers
    end
    def merge_sort
      sort(numbers)
    end
    def sort(numbers)
      n = numbers.size
      return numbers if n <= 1
      half_size = n/2.round
      left_half = numbers.take(half_size)
      right_half = numbers.drop(half_size)
      left = sort(left_half)
      right = sort(right_half)
      return merge(left, right)
    end

    def merge(left, right)
      result = []
      while !left.empty? && !right.empty?
        if left[0] < right[0]
          result.push(left.shift)
        else
          result.push(right.shift)
        end
      end
      return result.concat(left).concat(right)
    end
  end


end
