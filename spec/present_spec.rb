require 'present'

RSpec.describe Present do
  context "when there is no gift" do
    it "fails" do
      gift = Present.new
      expect { gift.unwrap }.to raise_error "No contents have been wrapped."
    end
  end

  context "when there is a gift" do
    it "fails" do
      gift = Present.new
      gift.wrap("Cheese")
      expect { gift.wrap("wine") }.to raise_error "A contents has already been wrapped."
    end
  end
end