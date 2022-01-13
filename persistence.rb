# https://www.codewars.com/kata/55bf01e5a717a0d57e0000ec/train/ruby
def persistence(n)
    internal_persistence n
end

def internal_persistence n, times = 0
  if n < 10
    return times
  else
    internal_persistence(n.digits.reduce(1) { |x, y| x * y}, times + 1)
  end
end