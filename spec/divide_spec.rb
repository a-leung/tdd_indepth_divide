describe 'divide' do
  it 'passes' do
    expect(true).to eq(true)
  end

  it 'has divide function defined' do
    expect { divide }.to_not raise_error NameError
  end
end
