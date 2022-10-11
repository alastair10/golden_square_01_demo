require 'password_checker'

RSpec.describe PasswordChecker do
  context "when password is too short" do
    it "fails" do
      password = PasswordChecker.new()
      expect { password.check("Shorty") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end

  context "when there is no password" do
    it "fails" do
      password = PasswordChecker.new()
      expect { password.check("") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
  
  context "when the password is numbers" do
    it "fails" do
      password = PasswordChecker.new()
      expect { password.check(123.to_s) }.to raise_error "Invalid password, must be 8+ characters."
    end
  end

end