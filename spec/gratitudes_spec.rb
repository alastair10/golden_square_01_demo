require 'gratitudes'

RSpec.describe Gratitudes do
  it "returns a string of 2 gratitudes, health and family" do
    gratitudes = Gratitudes.new()
    gratitudes.add("health")
    gratitudes.add("family")
    result = gratitudes.format()
    expect(result).to eq "Be grateful for: health, family"
  end

  it "returns a string of 0 gratitudes" do
    gratitudes = Gratitudes.new()
    gratitudes.add("")
    result = gratitudes.format()
    expect(result).to eq "Be grateful for: "
  end

  it "returns a string of 1 gratitude" do
    gratitudes = Gratitudes.new()
    gratitudes.add("formula 1")
    result = gratitudes.format()
    expect(result).to eq "Be grateful for: formula 1"
    #gratitudes.add("formula 2")      # don't need this when we pass through the element on next line.
    result = gratitudes.add("formula 2")
    expect(result).to eq ["formula 1","formula 2"]
  end

end

