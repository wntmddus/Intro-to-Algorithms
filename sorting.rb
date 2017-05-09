def quicksort(arr, l, h)
  if l < h
    part = partition(arr, l, h)
    quicksort(arr, l, part - 1)
    quicksort(arr, part + 1, h)
  end
  arr
end
def partition(arr, l, h)
  x = arr[h]
  i = (l - 1);
  for j in l..(h-1)
    if arr[j] <= x
      i = i + 1
      temp = arr[j]
      arr[j] = arr[i]
      arr[i] = temp
    end
  end
  temp = arr[h]
  arr[h] = arr[i+1]
  arr[i+1] = temp
  return (i + 1)
end

class MinHeapSort
  attr_accessor :heap
  attr_accessor :sorted

  def initialize
    self.heap = [nil]
    self.sorted = Array.new
  end

  def insert(data)
    if self.heap.size == 0
      self.heap.push(data)
    else
      self.heap.push(data)     #[0  ,1,2,3,4,5,6,7,8, 9,10]
      sort(self.heap.size - 1) #[nil,2,3,4,5,6,7,8,9,10,11]
    end
  end
  def sort(root_index)
    if root_index == 1
      return
    elsif self.heap[root_index] < self.heap[root_index / 2]
      temp = self.heap[root_index]
      self.heap[root_index] = self.heap[root_index / 2]
      self.heap[root_index / 2] = temp
      sort(root_index / 2)
    end
  end
  def heapify(last_index)
    arr = self.heap
    self.heap = [nil]
    for i in 1..arr.length - 1
      insert(arr[i])
    end
  end

  def sort_array
    l = self.heap.size - 1
    while l != 0
      self.sorted.push(self.heap.delete_at(1))
      l = l - 1
      heapify(l)
    end
    self.sorted
  end


  def delete(number)
    self.heap.delete_if {|x|
      if x != nil
        x == number
      end
    }
    sort(self.heap.size - 1)
  end
  def find(number)
    result = 0
    for i in 1..self.heap.size - 1
      if self.heap[i] == number
        result = i
        break
      end
    end
    result
  end
  def print
    self.heap.each do |x|
      if x != nil
        puts "#{x}\n"
      end
    end
  end
end
def bucketsort(arr)
  buckets = Array.new((arr.max + 1), 0)

  arr.each { |i| buckets[i] += 1 }

  sorted = Array.new
  buckets.each_index { |index| buckets[index].times { sorted << index } }
  return sorted
end

def insertion_sort(collection)
  # #1
  sorted_collection = [collection.delete_at(0)]

  for val in collection
    sorted_collection_index = 0
    # #2
    while sorted_collection_index < sorted_collection.length
      if val <= sorted_collection[sorted_collection_index]
        # #3
        sorted_collection.insert(sorted_collection_index, val)
        break
      elsif sorted_collection_index == sorted_collection.length - 1
        # #4
        sorted_collection.insert(sorted_collection_index + 1, val)
        break
      end

      sorted_collection_index += 1
    end
  end

  sorted_collection
end

def selection_sort(collection)
   length = collection.length
   # #1
   for i in 0..length - 2
     # #2
     min_index = i
     # #3
     for j in (i + 1)...length
       if collection[j] < collection[min_index]
         # #4
         min_index = j
       end
     end

     # #5
     tmp = collection[i]
     collection[i] = collection[min_index]
     collection[min_index] = tmp
   end
   collection
 end
 def bubble_sort(collection)
   n = collection.length
   # #1
   begin
     swapped = false

     # #2
     (n - 1).times do |i|
       # #3
       if collection[i] > collection[i + 1]
         tmp = collection[i]
         collection[i] = collection[i + 1]
         collection[i + 1] = tmp
         swapped = true
       end
     end
   end until not swapped

   collection
 end
 def merge_sort(collection)
   # #1
   if collection.length <= 1
     collection
   else
     # #2
     mid = (collection.length / 2).floor
     left = merge_sort(collection[0..mid - 1])
     right = merge_sort(collection[mid..collection.length])
     # #3
     merge(left, right)
   end
 end

 def merge(left, right)
   if left.empty?
     # #4
     right
   elsif right.empty?
     # #5
     left
   elsif left.first < right.first
     # #6
     [left.first] + merge(left[1..left.length], right)
   else
     # #7
     [right.first] + merge(left, right[1..right.length])
   end
 end
