# https://leetcode.com/problems/rotate-array/description/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  total = nums.size
  return nums if total < 2 || total == k
  skip_val = k
  skip_val = k%total if total < k

  result = []
  (-skip_val..(total-skip_val-1)).each do |i|
    result[i+skip_val] = nums[i]
  end
  (0..total-1).each do |i|
    nums[i] = result[i]
  end
end

require 'rspec'
RSpec.describe 'remove_duplicates' do
  it 'return the majority element' do
    nums = [1,2,3,4,5]
    out_nums = [4,5,1,2,3]
    rotate(nums, 2)
    expect(nums).to eq(out_nums)
  end
end