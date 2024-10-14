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

