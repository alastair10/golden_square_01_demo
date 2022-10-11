require 'counter'

RSpec.describe Counter do
  it "adds a number to a counter and returns it" do
    counter = Counter.new()
    counter.add(5)
    result = counter.report()
    expect(result).to eq "Counted to 5 so far."
  end

  it "adds a number to a counter and returns it" do
    counter = Counter.new()
    counter.add(99)
    counter.add(1)
    result = counter.report()
    expect(result).to eq "Counted to 100 so far."
  end
end