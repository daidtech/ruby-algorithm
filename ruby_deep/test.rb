# Task: Format a String with gsub and Regex
# You have the following string:

# str = "The price of apple is 10USD and banana is 5USD."
# Requirements:
# Use gsub with regex to convert the prices into Vietnamese currency (VND).
# Assume 1 USD = 24,000 VND.
# The output should be:

# "The price of apple is 240000VND and banana is 120000VND."
# Think about how you can use regex capturing groups and string interpolation to achieve this! 💡

# Take your time and let me know when you're ready to check your solution! 🚀

# Solution:
def convert_to_vnd(str)
  str.gsub(/(\d+)USD/){ "#{$1.to_i * 24000}VND" }
end

str = "The price of apple is 10USD and banana is 5USD."
puts convert_to_vnd(str)
