def binary_search_iterative(collection, value)
  low = 0
  high = collection.length - 1

  while low <= high
    mid = (low + high) / 2
    if collection[mid] > value
      high = mid - 1
    elsif collection[mid] < value
      low = mid + 1
    elsif collection[mid] == value
      return mid
    else
      return -1
    end
  end

end

def binary_search_recursive(low, high, collection, value)
  mid = (low + high) / 2
  if collection[mid] > value
    binary_search_recursive(low, mid - 1, collection, value)
  elsif collection[mid] < value
    binary_search_recursive(mid + 1, high, collection, value)
  elsif collection[mid] == value
    return mid
  else
    return -1
  end
end
