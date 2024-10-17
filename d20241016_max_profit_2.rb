# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/?envType=study-plan-v2&envId=top-interview-150
# You are given an integer array prices where prices[i] is the price of a given stock on the ith day.
# On each day, you may decide to buy and/or sell the stock. You can only hold at most one share of the stock at any time. However, you can buy it then immediately sell it on the same day.
# Find and return the maximum profit you can achieve.


# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profits = 0
  sell_price_high = buy_price_low = prices[0]

  prices.each do |price|
    if(sell_price_high>price) # sell when down trend
      profits += [sell_price_high-buy_price_low, 0].max
      sell_price_high = buy_price_low = price
    else # buy when up trend
      sell_price_high = price
    end
  end
  profits += [sell_price_high-buy_price_low, 0].max
end

require 'rspec'
RSpec.describe 'max_profit' do
  it 'max_profit' do
    nums = [7,1,5,3,6,4]
    out_nums = 7
    expect(max_profit(nums)).to eq(out_nums)
  end
  it 'max_profit' do
    nums = [1,2,3,4,5]
    out_nums = 4
    expect(max_profit(nums)).to eq(out_nums)
  end
  it 'max_profit' do
    nums = [7,6,4,3,1]
    out_nums = 0
    expect(max_profit(nums)).to eq(out_nums)
  end
end