require './divide'
RSpec::Expectations.configuration.on_potential_false_positives = :nothing

describe 'divide' do
  it 'passes' do
    expect(true).to eq(true)
  end

  it 'has divide function defined' do
    expect { divide }.to_not raise_error NameError
  end
end

describe 'arguments' do
  it 'accepts two arguments - numerator & denominator' do
    expect { divide(1,1) }.to_not raise_error ArgumentError
  end
end
