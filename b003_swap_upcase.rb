# https://edabit.com/challenge/7rK6mmmGMDNN8QvBd
# Move Capital Letters to the Front
# Create a function that moves all capital letters to the front of a word.
# Examples
# cap_to_front("hApPy") ➞ "APhpy"
# cap_to_front("moveMENT") ➞ "MENTmove"
# cap_to_front("shOrtCAKE") ➞ "OCAKEshrt"
def cap_to_front(s)
	result = []
	arrUpper = []
	arrSeed = s.split(//)
	arrSeed.each_with_index{|value, index| 
		if value.ord < 97
			arrUpper.push(index) 
			result.push(value)
		end
	}
	for i in 0..arrSeed.length-1
		unless(arrUpper.include?(i))
			result.push(arrSeed[i])
		end
	end
	result.join
end

# Converting Hashes to Arrays
# Write a function that converts a hash into an array, where each element represents a key-value pair in the form of an array.
# Examples
# convert_to_array({ "a" => 1, "b" => 2 }) ➞ [["a", 1], ["b", 2]]
# convert_to_array({ "shrimp" => 15, "tots" => 12 }) ➞ [["shrimp", 15], ["tots", 12]]
# convert_to_array({}) ➞ []
# Notes
# Return an empty array if the hash is empty.


# Lexicographically First and Last
# Write a function that returns the lexicographically first and lexicographically last rearrangements of a lowercase string. Output the results in the following manner:
# first_and_last(string) ➞ [first, last]
# Examples
# first_and_last("marmite") ➞ ["aeimmrt", "trmmiea"]
# first_and_last("bench") ➞ ["bcehn", "nhecb"]
# first_and_last("scoop") ➞ ["coops", "spooc"]

def first_and_last1(s)
	result = []
	result_temp = []
	seed = s.split(//).map{|v| v.ord}
	for i in 0..seed.length-2
		for j in i+1..seed.length-1
			if(seed[i]>=seed[j])
				temp = seed[i]
				seed[i] = seed[j]
				seed[j] = temp
			end
		end
	end
	result[0] = (seed.map{|v| v.chr}).join
	result[1] = result[0].reverse
	result
end