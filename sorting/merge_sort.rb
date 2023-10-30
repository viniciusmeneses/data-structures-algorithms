def merge_sort(arr, start, ending)
  return arr if ending == start

  middle = (start + ending) / 2
  merge_sort(arr, start, middle)
  merge_sort(arr, middle + 1, ending)

  merge(arr, start, middle, ending)

  arr
end

def merge(arr, start, middle, ending)
  curr = start
  l = 0
  r = 0

  left = arr[start..middle]
  right = arr[middle + 1..ending]

  l_size = left.size
  r_size = right.size

  while l < l_size && r < r_size
    if left[l] <= right[r]
      arr[curr] = left[l]
      l += 1
    else
      arr[curr] = right[r]
      r += 1
    end

    curr += 1
  end

  while l < l_size
    arr[curr] = left[l]
    l += 1
    curr += 1
  end

  while r < r_size
    arr[curr] = right[r]
    r += 1
    curr += 1
  end
end

p merge_sort([3, 5, 1, 7, 2, 10, 12, 6, 9], 0, 8)
