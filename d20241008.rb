# https://leetcode.com/problems/remove-duplicates-from-sorted-array/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  index_uniq = 0
  (1..nums.length-1).each do |i|
    if nums[i] != nums[index_uniq]
      index_uniq+=1
      nums[index_uniq] = nums[i]
      nums[i] = '_'
    end
  end
  index_uniq+1
end

require 'rspec'
RSpec.describe 'remove_duplicates' do
  it 'removes duplicates from a sorted array' do
    nums = [1, 1, 2]
    expect(nums.first(remove_duplicates(nums))).to eq([1,2])
  end
  it 'removes duplicates from a sorted array' do
    nums = [0,0,1,1,1,2,2,3,3,4]
    out_nums = [0,1,2,3,4]
    expect(nums.first(remove_duplicates(nums))).to eq(out_nums)
  end
end