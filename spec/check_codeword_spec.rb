require 'check_codeword'

RSpec.describe "check_codeword method" do
    it "returns a wrong message if given the wrong codeword" do
        result = check_codeword("mouse") 

        expect(result).to eq "WRONG!"

    end

    it "returns a correct message if given the right codeword" do
        result = check_codeword("horse")

        expect(result).to eq "Correct! Come in."
    end

    it "returns a close message if given a codeword that is close" do
        result = check_codeword("house")

        expect(result).to eq "Close, but nope."
    end


end