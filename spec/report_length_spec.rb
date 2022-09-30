require 'report_length'

RSpec.describe "report_length method" do

    it "returns how long in characters the string is" do
        result = report_length("Molly")

        expect(result).to eq ("This string was 5 characters long.")
    end

    it "returns how long in characters the string is" do
        result = report_length("Kieran")

        expect(result).to eq ("This string was 6 characters long.")
    end

    it "returns how long in characters the string is" do
        result = report_length("Supercalinevermind")

        expect(result).to eq ("This string was 18 characters long.")
    end

end