# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  i = 0
  j = 1
  nums_size = nums.size
  checked_nums = []
  while(i < nums_size && j < nums_size) do
    if(nums[j] + nums[i] == target)
      return ([i, j])
    end
    j = j+1
    if(j == nums_size)
      i = if checked_nums.include?(nums[i])
        i + 2
      else
        checked_nums.push(nums[i])
        i + 1
      end
      j = i + 1
    end
  end
end
p two_sum([-1,-2,3,-4,5], 8)
