require 'report_length.rb'  # file with the code

RSpec.describe "report_length method" do    # sets up the test suite
  it "checks the length of the string input" do
    result = report_length("Alastair10")
    expect(result).to eq "This string was 10 characters long."
  end

  it "checks the length of the string input" do
    result = report_length("Makers is fun")
    expect(result).to eq "This string was 13 characters long."
  end

  it "checks the length of the string input" do
    result = report_length("")
    expect(result).to eq "This string was 0 characters long."
  end

end