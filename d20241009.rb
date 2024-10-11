# https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums
# @return {Integer}
MAX_DUPLICATE = 2
def remove_duplicates(nums)
  scan_index = 0
  duplicate_count = 1
  (1..nums.length-1).each do |i|
    if nums[scan_index]==nums[i]
      duplicate_count +=1
      if duplicate_count==MAX_DUPLICATE
        nums[scan_index+1] = nums[scan_index]
        scan_index+=1
      end
    else
      scan_index+=1
      nums[scan_index]=nums[i]
      duplicate_count = 1
    end
  end
  scan_index+1
end

require 'rspec'
RSpec.describe 'remove_duplicates' do
  it 'removes duplicates from a sorted array' do
    nums = [1,1,1,2,2,3]
    out_nums = [1,1,2,2,3]
    expect(nums.first(remove_duplicates(nums))).to eq(out_nums)
  end
  it 'removes duplicates from a sorted array' do
    nums = [0,0,1,1,1,1,2,3,3]
    out_nums = [0,0,1,1,2,3,3]
    expect(nums.first(remove_duplicates(nums))).to eq(out_nums)
  end
end