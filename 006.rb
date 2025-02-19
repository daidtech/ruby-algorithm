# # 392. Is Subsequence
# # Given two strings s and t, return true if s is a subsequence of t, or false otherwise.
# # A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).
# # Example 1:

# # Input: s = "abc", t = "ahbgdc"
# # Output: true
# # Example 2:

# # Input: s = "axc", t = "ahbgdc"
# # Output: false



# # @param {String} s
# # @param {String} t
# # @return {Boolean}
# def is_subsequence(s, t)
#   # s[i] include in t, index s[i] < s[j]
#   return false if(s.empty?)
#   return true if(t.empty?)
#   index = 0
#   current_item = s[index]
#   for i in 0..t.size-1 do
#     if(current_item == t[i])
#       index+=1
#       current_item = s[index]
#     end
#     return true if(index == s.size-1)
#   end
#   false
# end

# # improve
# def is_subsequence(s, t)
#   return false if s.empty?
#   return true if t.empty?

#   index = 0
#   current_item = s[index]

#   (0..t.size-1).each do |i|
#     if current_item == t[i]
#       index += 1
#       current_item = s[index]
#     end
#     return true if index == s.size-1
#   end

#   false
# end

# # improve
# def is_subsequence(s, t)
#   return false if s.empty?
#   return true if t.empty?

#   index = 0
#   current_item = s[index]
#   t.each_char do |char|
#     if current_item == char
#       index += 1
#       return true if index == s.size
#       current_item = s[index]
#     end
#   end

#   false
# end


# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  return true if (s.empty? ||  t.empty?)

  index = 0
  current_item = s[index]

  (0..t.size).each do |i|
    if current_item == t[i]
      index += 1
      current_item = s[index]
    end
  end
  return (index == s.size+1)
end
p is_subsequence("abc", "abssc")