# https://leetcode.com/problems/merge-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.

def merge(nums1, m, nums2, n)
  for i in 0..(n-1) do # number 2 index
    hold_value = nums2[i]
    for j in i..(m+n-1) do
      if hold_value <= nums1[j] || (hold_value > 0 && nums1[j]==0 && j>m-1+i)
        wrap_value = hold_value
        hold_value = nums1[j]
        nums1[j] = wrap_value
      end
    end
  end
  nums1
end

# nums1 = [1,2,3,0,0,0]
# m = 3
# nums2 = [2,5,6]
# n = 3
nums1 = [0,0,3,0,0,0,0,0,0]
m = 3
nums2 = [-1,1,1,1,2,3]
n = 6

# so sanh tung phan tu cua nums2 vs nums1
# if number2[i] < nums1[j] then replace nums1[j] with nums2[j] and move the num1 to next position
puts merge(nums1, m, nums2, n)