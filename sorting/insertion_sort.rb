def insertion_sort(array)
  i = 1

  while i < array.size
    j = i - 1

    while j >= 0 && array[j + 1] < array[j]
      tmp = array[j + 1]
      array[j + 1] = array[j]
      array[j] = tmp
      j -= 1
    end

    i += 1
  end

  array
end

p insertion_sort([5, 2, 9, 1, 8])
