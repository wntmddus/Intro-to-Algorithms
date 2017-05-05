require 'benchmark'
require_relative 'fibonacci_iterative'


Benchmark.bm(7) do |x|
  x.report("recursive fibonacci ") { fib_r(20) }
  #x.report("BinarySearchTree find 50000 ") { b.find(root,"500") }
  x.report("iterative fibonacci ") { fib_i(20) }
end
