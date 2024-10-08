# https://leetcode.com/problems/remove-duplicates-from-sorted-array/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  index_uniq = 0
  for i in 1..(nums.length-1) do
    if nums[i] == nums[index_uniq]
      nums[i] = '_'
    else
      index_uniq+=1
      nums[index_uniq] = nums[i]
      nums[i] = '_'
    end
  end
  nums
end

require 'rspec'
RSpec.describe 'remove_duplicates' do
  it 'removes duplicates from a sorted array' do
    nums = [1, 1, 2]
    expect(remove_duplicates(nums)).to eq([1,2, '_'])
  end
  it 'removes duplicates from a sorted array' do
    nums = [0,0,1,1,1,2,2,3,3,4]
    out_nums = [0,1,2,3,4, '_','_','_','_','_']
    expect(nums.size).to eq(out_nums.size)
    expect(remove_duplicates(nums)).to eq(out_nums)
  end
end