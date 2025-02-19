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
  jump_count = 1
  max_jump = index = 0
  while(index<total_size-1 || max_jump>=total_size-1)
    range_jump = nums[(index+1..nums[index])]
    max_jump = range_jump.map{|val, j| val+j+index}
    puts max_jump
    # index = range_jump.rindex(max_jump)
    index +=1
    jump_count+=1
  end
  jump_count
end

require 'rspec'
RSpec.describe 'jump' do
  # it 'jump' do
  #   nums = [2,3,1,1,4]
  #   out_nums = 2
  #   expect(jump(nums)).to eq(out_nums)
  # end
  # it 'jump' do
  #   nums = [2,3,0,1,4]
  #   out_nums = 2
  #   expect(jump(nums)).to eq(out_nums)
  # end
  # it 'jump' do
  #   nums = [0]
  #   out_nums = 0
  #   expect(jump(nums)).to eq(out_nums)
  # end
  # it 'jump' do
  #   nums = [2,1]
  #   out_nums = 1
  #   expect(jump(nums)).to eq(out_nums)
  # end
  # it 'jump' do
  #   nums = [1,2,3]
  #   out_nums = 2
  #   expect(jump(nums)).to eq(out_nums)
  # end
  it 'jump' do
    nums = [7,0,9,6,9,6,1,7,9,0,1,2,9,0,3]
    out_nums = 2
    expect(jump(nums)).to eq(out_nums)
  end
end