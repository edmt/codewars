# https://www.codewars.com/kata/5552101f47fc5178b1000050/train/ruby
def digits n, acc = [], pow = 0
  if n == 0
  	return acc.reverse
  else
    digit = n % 10**(pow+1) / (10**pow)
    digits(n - digit * 10**pow, acc + [digit], pow + 1)
  end
end

def dig_pow(n, p)
  a = digits(n)
  size = a.length
  b = (p...p+size).to_a
  sum = a.zip(b).map { |x, y| x ** y }.sum.to_f
  k = sum / n
  if k.modulo(1) == 0
  	k
  else
  	-1
  end
end

p dig_pow 46288, 3
