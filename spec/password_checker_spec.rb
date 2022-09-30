require 'password_checker'

RSpec.describe PasswordChecker do
    # password success (length is larger than 8 characters)
    it "returns password true as length is 8 or larger" do
        password = PasswordChecker.new

        expect(password.check('password12345')).to eq true
    end
    # password true - length is 8
    it "returns password true as length is 8" do
        password = PasswordChecker.new

        expect(password.check('12345678')).to eq true
    end
    
    # password fail - length is 0
    it "returns password fail as length is 0" do
        password = PasswordChecker.new

        expect {password.check('')}.to raise_error "Invalid password, must be 8+ characters."
    end

    # password fail (length is less than 8)

    it "returns password fail as length is less than 8" do
        password = PasswordChecker.new

        expect {password.check('123456')}.to raise_error "Invalid password, must be 8+ characters."
    end


end