require 'counter'

RSpec.describe Counter do
    it "it returns a count of 0" do
        count1 = Counter.new 
        count1.add(0)
        result = count1.report()

    expect(result).to eq "Counted to 0 so far."

    end

    it "it returns a count of added values with 1 addition" do
        count1 = Counter.new 
        count1.add(5)
        result = count1.report()

    expect(result).to eq "Counted to 5 so far."

    end

    it "it returns a count of added values with 3 addition" do
        count1 = Counter.new 
        count1.add(5)
        count1.add(4)
        count1.add(3)
        result = count1.report()

    expect(result).to eq "Counted to 12 so far."

    end

end