def poorly_written_ruby(*arrays)
  combined_array = []
  (0..arrays.length-1).each do |i|
    (0..arrays[i].length-1).each do |j|
      combined_array << arrays[i][j]
     end
   end

   sorted_array = [combined_array.delete_at(combined_array.length-1)]

   for j in (0..combined_array.length-1)
    i = 0
    current = combined_array[j]
    sorted_array_length = sorted_array.length
    while current < sorted_array_length
      if current <= sorted_array[i]
        sorted_array.insert(i, current)
        break
      elsif i == sorted_array_length-1
        sorted_array << current
        break
      end
      i+=1
    end
  end
  # Return the sorted array
  sorted_array
end
