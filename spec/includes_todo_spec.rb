require "includes_todo"

describe "includes_todo method" do
  it "returns true if passed '#TODO Paint my living room.'" do
    expect(includes_todo("#TODO Paint my living room.")).to eq true
  end

  it "returns false if passed '#TODO Paint my living room.'" do
    expect(includes_todo("Paint my living room.")).to eq false
  end

  it "returns true if passed 'Paint #TODO my living room.'" do
    expect(includes_todo("Paint #TODO my living room.")).to eq true
  end

  it "returns true if passed ' Paint my#TODOliving room.'" do
    expect(includes_todo(" Paint my#TODOliving room.")).to eq true
  end

  it "returns true if passed 'Paint my living room.#TODO'" do
    expect(includes_todo("Paint my living room.#TODO")).to eq true
  end 

  it "returns false if passed 'TODO Paint my living room.'" do
    expect(includes_todo("TODO Paint my living room.")).to eq false
  end

  it "returns false if passed '#todo Paint my living room.'" do
    expect(includes_todo("#todo Paint my living room.")).to eq false
  end

  it "returns false if passed '' " do
    expect(includes_todo("")).to eq false
  end

  it "throws an Argument error if passed nothing" do
    expect { includes_todo }.to raise_error ArgumentError
  end

  it "throws an no method error if passed nil" do
    expect { includes_todo(nil) }.to raise_error NoMethodError
  end
end
