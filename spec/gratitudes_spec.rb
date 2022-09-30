require 'gratitudes'

RSpec.describe Gratitudes do
    it "returns an empty gratitude string" do
        gratitude1 = Gratitudes.new
        gratitude1.add("")
        expect(gratitude1.format).to eq "Be grateful for: "
    end

    it "returns 1 gratitude string" do
        gratitude1 = Gratitudes.new
        gratitude1.add("good weather")
        expect(gratitude1.format).to eq "Be grateful for: good weather"
    end

    it "returns 2 gratitude strings" do
        gratitude1 = Gratitudes.new
        gratitude1.add("cups of tea")
        gratitude1.add("puzzles")
        expect(gratitude1.format).to eq "Be grateful for: cups of tea, puzzles"
    end

end