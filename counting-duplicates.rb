# https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/train/ruby

def duplicate_count(text)
    text
    	.upcase
    	.scan(/./)
    	.group_by { |t| t }
    	.filter { |k, v| v.size > 1 }
    	.size
end

p duplicate_count "Indivisibilities"