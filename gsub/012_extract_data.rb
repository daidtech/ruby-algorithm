# You have the following string:
# str = "Order ID: #12345, Amount: $99.50, Discount: 10%"

# Your Task:
# Extract the order ID, amount, and discount separately.
# Convert the amount from USD to VND (1 USD = 24,000 VND).
# Replace the original amount in the string with its VND equivalent.
# Return the modified string and extracted values.

# Expected Output Example:
# Extracted values:
## Order ID: 12345
## Amount in VND: 2388000
## Discount: 10%

# Modified string:
# "Order ID: #12345, Amount: 2388000VND, Discount: 10%"

def extract_data(str)
  order_id = str[/#(\d+)/, 1]
  amount = str[/\$(\d+\.\d+)/, 1]
  discount = str[/(\d+)%/, 1]
  puts "Extracted values:"
  puts "Order ID: #{order_id}"
  puts "Amount in VND: #{amount.to_f * 24000}"
  puts "Discount: #{discount}%"
  puts "\n\n\n"
  puts "Modified string:"
  puts str.gsub(/\$(\d+\.\d+)/) { "#{$1.to_f * 24000}VND" }
end

str = "Order ID: #12345, Amount: $99.50, Discount: 10%"
extract_data(str)