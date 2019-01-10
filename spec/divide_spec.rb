require './divide'

describe 'divide' do
  it 'passes' do
    expect(true).to eq(true)
  end

  it 'has divide function defined' do
    expect { divide }.to_not raise_error
  end
end

describe 'arguments' do
  it 'accepts two arguments - numerator & denominator' do
    expect { divide(1,1) }.to_not raise_error
  end
end
