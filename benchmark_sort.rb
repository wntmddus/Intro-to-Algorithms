require 'benchmark'
require_relative 'sorting'
a = Array.new
(1..50).each do |x|
  a.push(51-x)
end

h = MinHeapSort.new
h.heap = h.heap + a
p h.heap


Benchmark.bm(7) do |x|
  x.report("quicksort 50 items: ") { quicksort(a, 0, 49)}
  x.report("heapsort 50 items: ") { heap_sort(a) }
  x.report("bucketsort 50 items: ") { bucketsort(a) }
  x.report("insertion sort 50 items: ") { insertion_sort(a) }
  x.report("selection sort 50 items: ") { selection_sort(a) }
  x.report("bubble sort 50 items: ") { bubble_sort(a) }
  x.report("merge sort 50 items: ") { merge_sort(a) }
end

#heap sort and quicksort is known to be the fastest sorting algorithm ever existed
#however, since those algorithms are using recursion,
#each function calls its making requires more overhead than the single iteration itself.
