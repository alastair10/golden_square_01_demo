require 'string_builder'

RSpec.describe StringBuilder do
  it "returns the length of Hello (5) and then Hello" do
    string_builder = StringBuilder.new()
    string_builder.add("Hello")
    result = string_builder.size()
    expect(result).to eq 5
    result = string_builder.output()
    expect(result).to eq "Hello"
  end

  it "returns the length of Alastair10! (11) and then Alastair10!" do
    string_builder = StringBuilder.new()
    string_builder.add("Alastair10!")
    result = string_builder.size()
    expect(result).to eq 11
    result = string_builder.output()
    expect(result).to eq "Alastair10!"
  end

  it "returns the length of "" (0) and then the empty string" do
    string_builder = StringBuilder.new()
    string_builder.add("")
    result = string_builder.size()
    expect(result).to eq 0
    result = string_builder.output()
    expect(result).to eq ""
  end

end