def bubble_sort(unsorted_numbers)
    length = unsorted_numbers.length
    temp = 0
    length.times do
        unsorted_numbers.each_with_index do |value, index|
            break if (index == (length - 1))
            if ((unsorted_numbers[index] <=> unsorted_numbers[index + 1]) == 1)
                temp = unsorted_numbers[index]
                unsorted_numbers[index] = unsorted_numbers[index + 1]
                unsorted_numbers[index + 1] = temp
            end
        end
    end
    return unsorted_numbers
end

p bubble_sort([25, 18, 54, 2, 7, 15])