# https://www.codewars.com/kata/5626b561280a42ecc50000d1/train/ruby

def eureka? n
	n
		.digits
		.reverse
		.map.with_index { |val, i| val**(i+1) }
		.sum == n
end

def sum_dig_pow(a, b)
  (a..b).select { |n| eureka? n }
end

p sum_dig_pow(1, 100) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 89]