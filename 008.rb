# @param {String} s
# @return {Boolean}
def is_valid(s)
  current_bracket = []
  opened_validate = ['(', '{', '[']
  closed_validate = [')', '}', ']']

  s.split('').each do |item|
    if(opened_validate.include?(item))
      current_bracket.push(item)
    elsif(is_same_type(current_bracket[-1], item))
      current_bracket.pop()
    else
      return false
    end
  end
  true
end

def is_same_type start_bracket, end_bracket
  return  start_bracket == '(' && end_bracket == ')' ||
          start_bracket == '{' && end_bracket == '}' ||
          start_bracket == '[' && end_bracket == ']'
end

p is_valid('()[]{}')
p is_valid('(][]{}')