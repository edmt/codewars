# https://www.codewars.com/kata/53368a47e38700bd8300030d/train/ruby

def list names
  internal_list names
end

def internal_list names
	if names.size == 0
		''
	elsif names.size == 1
		names.first[:name]
	elsif names.size == 2
		names.map{ |n| n[:name] }.join(" & ")
	else
		[
			names[0...-2].map{ |n| n[:name] },
			names[-2..-1].map{ |n| n[:name] }.join(" & ")
		].join(", ")
	end
end

p list([ {name: 'Homer'},{name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

p list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

p list([ {name: 'Bart'} ])
# returns 'Bart'

p list([])
# returns ''


