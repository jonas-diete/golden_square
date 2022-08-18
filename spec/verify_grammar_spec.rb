require "verify_grammar"

describe "verify_grammar method" do
  it 'returns true if passed "I live in England."' do
    expect(verify_grammar("I live in England.")).to eq true
  end
  it 'returns true if passed "There is a car!"' do
    expect(verify_grammar("There is a car!")).to eq true
  end
  it 'returns true if passed "Where do you live?"' do
    expect(verify_grammar("Where do you live?")).to eq true
  end
  it 'returns false if passed "i live in England."' do
    expect(verify_grammar("i live in England.")).to eq false
  end
  it 'returns false if passed "there is a car!"' do
    expect(verify_grammar("there is a car!")).to eq false
  end
  it 'returns false if passed "where do you live?"' do
    expect(verify_grammar("where do you live?")).to eq false
  end
  it 'returns false if passed "I live in England-"' do
    expect(verify_grammar("I live in England-")).to eq false
  end
  it 'returns false if passed "There is a car"' do
    expect(verify_grammar("There is a car")).to eq false
  end
  it 'returns false if passed "Where do you live?"' do
    expect(verify_grammar("Where do you live()")).to eq false
  end
end