def quick_sort(arr, start, ending)
  return arr if ending - start + 1 <= 1

  pivot = arr[ending]
  left = start

  for i in start...ending
    if arr[i] <= pivot
      tmp = arr[i]
      arr[i] = arr[left]
      arr[left] = tmp
      left += 1
    end
  end

  arr[ending] = arr[left]
  arr[left] = pivot

  quick_sort(arr, start, left - 1)
  quick_sort(arr, left + 1, ending)

  arr
end

p quick_sort([3, 5, 1, 7, 2, 10, 12, 6, 9], 0, 8)
