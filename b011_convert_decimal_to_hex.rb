# Description:
# Acknowledgments:
# I thank yvonne-liu for the idea and for the example tests :)

# Description:
# Encrypt this!

# You want to create secret messages which can be deciphered by the Decipher this! kata. Here are the conditions:

# Your message is a string containing space separated words.
# You need to encrypt each word in the message using the following rules:
# The first letter must be converted to its ASCII code.
# The second letter must be switched with the last letter
# Keepin' it simple: There are no special characters in the input.
# Examples:
# encrypt_this("Hello") == "72olle"
# encrypt_this("good") == "103doo"
# encrypt_this("hello world") == "104olle 119drlo"

def encrypt_this(str)
  return str.split(' ').map{|word|
    if(word.size<=0)
      word
    elsif(word.size==1)
      encryptFirstWord(word)
    else
      firstWord, *sub_part = word.split('')
      encryptFirstWord(firstWord) + swaptCharacter(sub_part)
    end
  }.join(' ')
end

def encryptFirstWord(str)
  return str.ord.to_s
end

def swaptCharacter(str)
  first_word, *middle, last_word = str
  last_word = '' if last_word.nil?
  return last_word+middle.join('')+first_word
end

# best solution
def encrypt_this(text)
  text.split.map { |word|
    word[1], word[-1] = word[-1], word[1] if word.size > 2
    word[0] = word[0].ord.to_s
    word
  } .join(' ')
end
# or
def encrypt_this t
  t.gsub(/\b(\w)((\w)(\w*)(\w))?/){|t| "#{$1.ord}#{$5}#{$4}#{$3}" }
end