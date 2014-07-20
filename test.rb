require_relative "radix"

test = [ 983 , 6, 198, 23, 1064, 123 ]

@radix = RadixSort.new

p @radix.sort(test)