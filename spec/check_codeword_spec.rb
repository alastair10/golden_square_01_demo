require 'check_codeword.rb'   # file with the code

RSpec.describe "check_codeword method" do   # set up the test suite (group of tests)
  it "takes pw and checks if it is horse" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "takes pw and checks if it is almost correct" do
    result = check_codeword("horseee")
    expect(result).to eq "Close, but nope."
  end

  it "takes pw and checks if it is wrong" do
    result = check_codeword("pony")
    expect(result).to eq "WRONG!"
  end
end

