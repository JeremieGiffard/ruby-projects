# frozen_string_literal: true

# algorithm that works by repeatedly swapping the adjacent elements if they are in the wrong order.
def bubble_sort(random_array)
  initial_value = random_array[0]
  initial_index = 0
  # loop array
  random_array.each_with_index do |value, index|
    if initial_value < value
      random_array[initial_index] = value
      random_array[index] = initial_value
      # do something
    end
    # assigner pour comparer prochain loop
    initial_value = value
  end
end
