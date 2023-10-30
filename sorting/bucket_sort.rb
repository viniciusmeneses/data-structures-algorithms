def bucket_sort(arr)
  counts = [0, 0, 0] # Considering that arr will only have 3 disctinct values

  for v in arr
    counts[v] += 1
  end

  i = 0
  n = 0
  while n < counts.size
    counts[n].times do
      arr[i] = n
      i += 1
    end
    n += 1
  end

  arr
end

p bucket_sort([2, 1, 2, 0, 0, 2])
