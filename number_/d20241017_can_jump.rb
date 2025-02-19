# https://leetcode.com/problems/jump-game/description/?envType=study-plan-v2&envId=top-interview-150
# You are given an integer array nums. You are initially positioned at the array's first index, and each element in the array represents your maximum jump length at that position.
# Return true if you can reach the last index, or false otherwise.

# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  # fill strategy
  fill_power  = 0
  nums.each_with_index do |num, index|
    if(index<=fill_power)
      fill_power = [fill_power, num+index].max
    end
    return true if fill_power >= nums.size
  end
  false
end

require 'rspec'
RSpec.describe 'max_profit' do
  it 'can_jump true' do
    nums = [2,3,1,1,4]
    out_nums = true
    expect(can_jump(nums)).to eq(out_nums)
  end
  it 'can_jump false' do
    nums =[3,2,1,0,4]
    out_nums = false
    expect(can_jump(nums)).to eq(out_nums)
  end
end