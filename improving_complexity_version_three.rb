def quicksort(array, from=0, to=7)
  array.flatten
  if from >= to
    return
  end
  pivot = arr[from]
  i = from
  for j in (1+from)..to
    if arr[j] < pivot
      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp
      i = i + 1
    end
  end
  quicksort(arr, from, i-1)
  quicksort(arr, i+1, to)
end

arr = [[8,7,4,3],[1,2,6,9]]
p quicksort(arr)
p arr
