# https://leetcode.com/problems/jump-game-ii/description/?envType=study-plan-v2&envId=top-interview-150
# You are given a 0-indexed array of integers nums of length n. You are initially positioned at nums[0].
# Each element nums[i] represents the maximum length of a forward jump from index i. In other words, if you are at nums[i], you can jump to any nums[i + j] where:
# 0 <= j <= nums[i] and
# i + j < n
# Return the minimum number of jumps to reach nums[n - 1]. The test cases are generated such that you can reach nums[n - 1].

# @param {Integer[]} nums
# @return {Boolean}
def jump(nums)
  total_size = nums.size
  return 0 if total_size<=1
end

require 'rspec'
RSpec.describe 'jump' do
  # it 'jump' do
  it 'jump' do
    nums = [7,0,9,6,9,6,1,7,9,0,1,2,9,0,3]
    out_nums = 2
    expect(jump(nums)).to eq(out_nums)
  end
end