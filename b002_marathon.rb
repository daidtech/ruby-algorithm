# d is array, return if total d is 25
# example
# marathon_distance([1, 2, 3, 4]) ➞ false
# marathon_distance([1, 9, 5, 8, 2]) ➞ true
# marathon_distance([-6, 15, 4]) ➞ true
def marathon_distance1(d)
	result = 0
	for i in d
        if(i<0)
            result -=i
        else
            result +=i
        end
	end
	if(result == 25)
		return true
	end
	return false
end

def marathon_distance(d)
	result = 0
    d.each{|value| result+= value>0 ? value : -(value) }
	if(result == 25)
		return true
	end
	return false
end
