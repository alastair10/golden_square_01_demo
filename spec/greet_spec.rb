require 'greet.rb'    # require the file with our code

RSpec.describe "greet method" do    # set up the test suite (group of tests)
  it "adds a name to return a greet message with that name" do    # single test
    result = greet("Alastair")    # run the method with example Alastair
    expect(result).to eq "Hello, Alastair!"   # what it should return
  end
  # add more tests here
end
# onle one test suite per file