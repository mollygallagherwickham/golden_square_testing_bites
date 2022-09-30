require 'string_builder'

RSpec.describe StringBuilder do
    it "returns an empty string" do
        string1 = StringBuilder.new
        string1.add("")

        expect(string1.output).to eq ""
    end

    it "returns a string" do
        string1 = StringBuilder.new
        string1.add("Hello!")
        result = string1.output()

        expect(string1.output).to eq "Hello!"
    end

    it "returns multiple strings put together" do
        string1 = StringBuilder.new
        string1.add("Is this the ")
        string1.add("way to Amarillo?")

        expect(string1.output).to eq "Is this the way to Amarillo?"
    end

    it "returns the length of a string" do
        string1 = StringBuilder.new
        string1.add("Hooray!")

        expect(string1.size).to eq 7
    end

    it "returns the length of multiple strings put together" do
        string1 = StringBuilder.new
        string1.add("abcdefg")
        string1.add("hijklmnop")
        string1.add("qrstuv")
        string1.add("wxyz")
        expect(string1.size).to eq 26
    end
end