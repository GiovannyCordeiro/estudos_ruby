
require_relative '../words_from_string'

describe 'word from string' do
  it 'empty string' do
    expect(words_from_string('')).to eq([])
  end

  it 'single word' do
    expect(words_from_string('cat')).to eq(['cat'])
    expect(words_from_string('    cat    ')).to eq(['cat'])
  end

  it 'test many words' do
    expect(words_from_string('the cat sat on the mat')).to eq([ 'the', 'cat', 'sat', 'on', 'the', 'mat' ])
  end

  it 'test ignore pontuation' do
    expect(words_from_string("<the!> cat's,-mat-")).to eq(['the', "cat's", 'mat'])
  end
end
