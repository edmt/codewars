#https://www.codewars.com/kata/576757b1df89ecf5bd00073b/train/ruby

#    *
#   ***
#  *****
# *******


# 1+2
# 3+2
# 5+2
# 7+2
# 9+2
# 11


def towerBuilder(n_floors)
  internalTowerBuilder n_floors
end

def internalTowerBuilder n, spaces=0, results=[]
	content = "*" * (2 * n - 1)
	space   = " " * spaces
	results << space + content + space
	if n == 1
		return results.reverse
	else
		internalTowerBuilder(n - 1, spaces + 1, results)
	end
end
