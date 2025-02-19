# https://leetcode.com/problems/is-subsequence/description/?envType=study-plan-v2&envId=top-interview-150
# Given two strings s and t, return true if s is a subsequence of t, or false otherwise.
# A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).


# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  return true if s.empty?
  return false if t.empty?

  index = 0
  current_item = s[index]

  (0..t.size).each do |i|
    if current_item == t[i]
      index += 1
      current_item = s[index]
    end
  end
  return (index == s.size)
end

require 'rspec'
RSpec.describe 'is_subsequence' do
  # it 'is_subsequence' do
  #   s = "abc"
  #   t = "ahbgdc"
  #   out = true
  #   expect(is_subsequence(s,t)).to eq(out)
  # end
  it 'is_subsequence' do
    s = "abc"
    t = "abcahbgab2cdc"
    out = true
    expect(is_subsequence(s,t)).to eq(out)
  end
end