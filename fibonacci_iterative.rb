def fib_i(n)
  fib_0 = 0
  fib_1 = 1
  (0..n-1).each do |x|
    temp = fib_0
    fib_0 = fib_1
    fib_1 = temp + fib_1
  end
  fib_1
end



def fib_r(n)
  if (n == 0)
     return 0
   elsif (n == 1)
     return 1
   else
     return fib_r(n-1) + fib_r(n-2)
   end
end

puts fib_i(20)
puts fib_r(20)
