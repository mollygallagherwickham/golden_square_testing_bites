require 'greet'

RSpec.describe "greet method" do

    it "returns Hello followed by the name given" do
        result = greet("Molly")

        expect(result).to eq "Hello, Molly"

    end
end 