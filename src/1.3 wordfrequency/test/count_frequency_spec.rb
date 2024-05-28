require_relative '../count_frequency'

describe 'count frequency' do
  it 'test empty list' do
    expect(count_frequency([])).to eq({})
  end

  it 'single word' do
    expect(count_frequency(['cat'])).to eq({ 'cat' => 1 })
  end

  it 'test two different wods' do
    expect(count_frequency(['cat', 'sat'])).to eq({ 'cat' => 1, 'sat' => 1 })
  end

  it 'test two words with adjecent repeat' do
    expect(count_frequency(['cat', 'cat', 'sat'])).to eq({ 'cat' => 2, 'sat' => 1 })
  end

  it 'test two words with non adjecent repeat' do
    expect(count_frequency(['cat', 'sat', 'cat'])).to eq({ 'cat' => 2, 'sat' => 1 })
  end
end
