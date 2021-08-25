# Reverse the Case
# Given a string, create a function to reverse the case. All lower-cased letters should be upper-cased, and vice versa.
# Examples
# reverse_case("Happy Birthday") ➞ "hAPPY bIRTHDAY"
# reverse_case("MANY THANKS") ➞ "many thanks"
# reverse_case("sPoNtAnEoUs") ➞ "SpOnTaNeOuS"

def reverse_case(str)
	result = []
	str.split(//).each do |v|
		assci_code = v.ord
		if(assci_code>=97 && assci_code<=122)
			result.push((assci_code-32).chr)
		elsif(assci_code>=65 && assci_code<=90)
			result.push((assci_code+32).chr)
		else
			result.push(assci_code.chr)
		end
	end
	result.join
end

def reverse_case(str)
    str.swapcase
end

# https://www.codewars.com/
# Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.
# Example:
# createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
def create_phone_number(numbers)
	start = numbers[(0..2)]
	middle = numbers[(3..5)]
	tails = numbers[(6..9)]
	"("+start.join+ ") " + middle.join+"-"+tails.join
end

def createPhoneNumber(numbers)
	"(%d%d%d) %d%d%d-%d%d%d%d" % numbers
end

# https://www.codewars.com/kata/5502c9e7b3216ec63c0001aa
# Description:
# The Western Suburbs Croquet Club has two categories of membership, Senior and Open. They would like your help with an application form that will tell prospective members which category they will be placed.
# To be a senior, a member must be at least 55 years old and have a handicap greater than 7. In this croquet club, handicaps range from -2 to +26; the better the player the lower the handicap.

def openOrSenior(data)
	#your code here
	result = []
	for i in data
		if i[0]>=55 && i[1]>7
		result.push("Senior")
		else
		result.push("Open")
		end
	end
	result
end
def openOrSenior(data)
	data.map { |age, handicap| age >= 55 && handicap > 7 ? "Senior" : "Open" }
end

# The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.
# Examples
# "din"      =>  "((("
# "recede"   =>  "()()()"
# "Success"  =>  ")())())"
# "(( @"     =>  "))(("
def duplicate_encode(word)
	len = word.length
	result = Array.new(len, "(")
	seed = word.downcase.split(//)
	for i in 0..len-2
	  if result[i]==")"
		next
	  end
	  for j in i+1..len-1
		if(seed[i]==seed[j])
		  result[i] = ")"
		  result[j] = ")"
		end
	  end
	end
	result.join
end

def duplicate_encode(word)
word
	.downcase
	.chars
	.map { |char| word.downcase.count(char) > 1 ? letter = ')' : letter = '(' }
	.join
end