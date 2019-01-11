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

describe 'divides' do
  it 'by 1 properly' do
    expect(divide(1,1)).to eq(1)
    expect(divide(2,1)).to eq(2)

    numerator = rand(1..1_000_000)
    expect(divide(numerator, 1)).to eq(numerator)
  end

  it 'by 2 properly' do
    expect(divide(1,2)).to eq(0)
    expect(divide(2,2)).to eq(1)

    numerator = rand(1..1_000_000)
    expect(divide(numerator, 2)).to eq(numerator/2)
  end

  it 'any integers properly' do
    expect(divide(2,3)).to eq(0)
    expect(divide(10,10)).to eq(1)
    expect(divide(14,7)).to eq(2)
    expect(divide(300, 100)).to eq(3)
  end
end

describe 'bad arguments' do
  it 'strings' do
    expect { divide("1", "1") }.to raise_error ArgumentError
    expect { divide(1, "1") }.to raise_error ArgumentError
    expect { divide("1", 1) }.to raise_error ArgumentError
  end
end

describe 'zeroes' do
  it '...' do
    # expect(divide(1,0)).to ...
  end
end
