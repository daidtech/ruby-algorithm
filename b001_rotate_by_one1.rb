# https://edabit.com/challenge/DdHnkHCLFQaAAuTPM
# Given an array, rotates the values clockwise by one (the last value is sent to the first position).
# Check the examples for a better understanding.
# ############# Examples #############
# rotate_by_one([1, 2, 3, 4, 5]) ➞ [5, 1, 2, 3, 4]
# rotate_by_one([6, 5, 8, 9, 7]) ➞ [7, 6, 5, 8, 9]
# rotate_by_one([20, 15, 26, 8, 4]) ➞ [4, 20, 15, 26, 8]

def rotate_by_one1(arr)
	result = []
	for i in 1..arr.length-1
		result[i] = arr[i-1]
	end
	result[0]= arr[arr.length-1]
	return result
end
#level know function  :|
# a = [ "a", "b", "c", "d" ]
# a.rotate         #=> ["b", "c", "d", "a"]
# a                #=> ["a", "b", "c", "d"]
# a.rotate(2)      #=> ["c", "d", "a", "b"]
# a.rotate(-3)     #=> ["b", "c", "d", "a"]
def rotate_by_one(arr)
	return arr.rotate(-1)
end

rotate_by_one([1,4,5,67,9])