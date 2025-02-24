# https://leetcode.com/problems/ransom-note/?envType=study-plan-v2&envId=top-interview-150
# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  count_ransom_note = counter(ransom_note)
  count_magazine = counter(magazine)

  count_ransom_note.all? { |char, count| count_magazine[char] >= count }
end

def counter(str)
  str.each_char.with_object(Hash.new(0)) { |chr, results| results[chr] += 1 }
end

# 012_test.rb
require 'rspec'
RSpec.describe '#can_construct' do
  it 'returns true when ransom note can be constructed from magazine' do
    expect(can_construct('a', 'a')).to be true
    expect(can_construct('aa', 'aab')).to be true
    expect(can_construct('abc', 'aabbcc')).to be true
  end

  it 'returns false when ransom note cannot be constructed from magazine' do
    expect(can_construct('a', 'b')).to be false
    expect(can_construct('aa', 'ab')).to be false
  end
end

RSpec::Core::Runner.run([$__FILE__])
