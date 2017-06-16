def merge_sort(*array)
  arr = array.flatten
  if arr.length <= 1
    return arr
  end
  mid = arr.length/2
  left = arr[0, mid]
  right = arr[mid, arr.length]
  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  sorted = []
  while left.length != 0 || right.length != 0
    if left.first <= right.first
      sorted.push(left.shift)
    else
      sorted.push(right.shift)
    end
  end
  sorted
end
