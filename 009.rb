# 1048. Longest String Chain
# Medium
# Topics
# Companies
# Hint

# You are given an array of words where each word consists of lowercase English letters.
# wordA is a predecessor of wordB if and only if we can insert exactly one letter anywhere in wordA without changing the order of the other characters to make it equal to wordB.
# For example, "abc" is a predecessor of "abac", while "cba" is not a predecessor of "bcad".
# A word chain is a sequence of words [word1, word2, ..., wordk] with k >= 1, where word1 is a predecessor of word2, word2 is a predecessor of word3, and so on. A single word is trivially a word chain with k == 1.

# Return the length of the longest possible word chain with words chosen from the given list of words.



# Example 1:

# Input: words = ["a","b","ba","bca","bda","bdca"]
# Output: 4
# Explanation: One of the longest word chains is ["a","ba","bda","bdca"].
# Example 2:

# Input: words = ["xbc","pcxbcf","xb","cxbc","pcxbc"]
# Output: 5
# Explanation: All the words can be put in a word chain ["xb", "xbc", "cxbc", "pcxbc", "pcxbcf"].
# Example 3:

# Input: words = ["abcd","dbqca"]
# Output: 1
# Explanation: The trivial word chain ["abcd"] is one of the longest word chains.
# ["abcd","dbqca"] is not a valid word chain because the ordering of the letters is changed.


# Constraints:

# 1 <= words.length <= 1000
# 1 <= words[i].length <= 16
# words[i] only consists of lowercase English letters.

# @param {String[]} words
# @return {Integer}
def longest_str_chain(words)
  sorted_words = words.sort_by{|i| i.size}
  # list possible new words
  sorted_shawdow = [[]]
  current_size = 0

  sorted_words.each_with_index do |item, index|
    if(current_size == item.size)
      sorted_shawdow = cloned_space(sorted_shawdow)
      p sorted_shawdow
    else
      current_size = item.size
    end
    push_value(sorted_shawdow, item)
  end

  # check is chain
  # push and find max length
end

def push_value(arr, value)
  arr.map{|child_arr| child_arr.push(value)}
end

def cloned_space(sorted_shawdow)
  new_item = sorted_shawdow.dup
  size = sorted_shawdow.size
  new_item.each do |item|
    sorted_shawdow.push(item - item[-1])
  end
end

longest_str_chain(["a","ba","b","bca","bda","bdca"])