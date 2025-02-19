# https://leetcode.com/problems/remove-element/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  counting = 0
  arr_index_of = []
  for i in  0..(nums.length-1) do
    if nums[i] != val
      counting+=1
      arr_index_of << i
    else
      nums[i] = '_'
    end
  end
  counting.times do |j|
    nums[j]= nums[arr_index_of[j]]
  end
  counting
end

nums =[3,2,2,3]
val = 3

# count the value not equal
# if value is equal, replace with next value, and change next value is
puts remove_element(nums, val)