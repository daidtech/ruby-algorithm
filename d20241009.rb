# https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums
# @return {Integer}
MAX_DUPLICATE = 2
def remove_duplicates(nums)
  scan_index = 1
  duplicate_count = 1
require 'rspec'
RSpec.describe 'remove_duplicates' do
  it 'removes duplicates from a sorted array' do
    nums = [1,1,1,2,2,3]
    expect(nums.first(remove_duplicates(nums))).to eq([1,1,2,2,3])
  end
end