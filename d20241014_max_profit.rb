# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  total_element = prices.size
  return 0 if total_element<=1 || (total_element==2 && prices[0] >= prices[1])
  profit_list = []
  (0..total_element-2).each do |i|
    (i..total_element-1).each do |j|
      profit_list << prices[j]-prices[i] if prices[j]>=prices[i]
    end
  end
  profit_list.max
end

def max_profit(prices)
  total_element = prices.size
  return 0 if total_element<=1
  if (total_element==2)
    return [prices[1] - prices[0], 0].max
   end

  profit_list = [0]
  i = 0
  min = prices[0]
  max = prices[(1..total_element-1)].max
  while(i<total_element-1) do
    break if prices[i]==0
    min = prices[i] if prices[i] < min
    max = prices[(i..total_element-1)].max if (min == prices[i])
    profit_list << (max-min)
    i +=1
  end
  profit_list.max
end


require 'rspec'
RSpec.describe 'max_profit' do
  it 'max_profit' do
    nums = [7,1,5,3,6,4]
    out_nums = 5
    expect(max_profit(nums)).to eq(out_nums)
  end
  it 'max_profit' do
    nums = [1,2]
    out_nums = 1
    expect(max_profit(nums)).to eq(out_nums)
  end
end