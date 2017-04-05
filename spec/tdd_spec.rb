require 'rspec'
require 'tdd'

describe "#my_uniq" do
  let(:orig_array) { [1, 2, 1, 3, 3] }
  let(:my_array) { orig_array.my_uniq }

  it "does not return an array with duplicate values" do
    expect(my_array).to eq([1, 2, 3])
  end

  it "returns a new array" do
    expect(my_array).to be_a(Array)
  end

  it "doesn't exclude values" do
    expect(my_array).to include(1, 2, 3)
  end

  it "doesn't mutate the original array" do
    expect(orig_array).to eq([1, 2, 1, 3, 3])
  end
end
