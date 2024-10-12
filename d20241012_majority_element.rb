# https://leetcode.com/problems/majority-element/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  return nil if nums.size == 0
  return nums[0] if nums.size<=2
  nums.sort[nums.size/2]
end

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  return nil if nums.size == 0
  return nums[0] if nums.size<=2
  (0..nums.size-1).each do |i|
    (i..nums.size-1).each do |j|
      if(nums[i]>nums[j])
        temp_val = nums[i]
        nums[i] = nums[j]
        nums[j] = temp_val
      end
    end
  end
  nums[nums.size/2]
end

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  return nil if nums.size == 0
  return nums[0] if nums.size<=2
  counting = {}
  nums.each do |val|
    counting[val].nil? ? (counting[val]=1) : (counting[val]+=1)
  end
  counting.find{|_, val| val>nums.size/2}[0]
end

require 'rspec'
RSpec.describe 'remove_duplicates' do
  it 'return the majority element' do
    nums = [3,2,3]
    out_nums = 3
    expect(majority_element(nums)).to eq(out_nums)
  end
  it 'return the majority element' do
    nums = [2,2,1,1,1,2,2]
    out_nums = 2
    expect(majority_element(nums)).to eq(out_nums)
  end
  it 'return the majority element' do
    nums = [6,5,5]
    out_nums = 5
    expect(majority_element(nums)).to eq(out_nums)
  end
  it 'return the majority element' do
    nums = [-1,1,1,1,2,1]
    out_nums = 1
    expect(majority_element(nums)).to eq(out_nums)
  end
end