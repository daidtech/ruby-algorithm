# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  character_index = 0
  word_index = 0
  longest_word = ""
  return strs[0] if strs.size < 2
  loop do
    if(word_index+1 == strs.length)
      longest_word += strs[word_index][character_index]
      word_index = 0
      character_index += 1
    end
    if( character_index >= strs[word_index].length || strs[word_index][character_index] != strs[word_index+1][character_index])
      return longest_word
    end
    word_index += 1
  end
end