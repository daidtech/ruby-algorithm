# https://leetcode.com/problems/ransom-note/?envType=study-plan-v2&envId=top-interview-150
# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  ransom_note.split('')-magazine.split('') == []
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