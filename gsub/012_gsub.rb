def convert_to_vnd(str)
  str.gsub(/(\d+)USD/){ "#{$1.to_i * 24000}VND" }
end

str = "The price of apple is 10USD and banana is 5USD."
puts convert_to_vnd(str)
