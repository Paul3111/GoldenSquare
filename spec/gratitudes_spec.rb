require 'gratitudes'

RSpec.describe Gratitudes do
    it "returns what you are grateful for - pairing" do
        gr1 = Gratitudes.new
        gr1.add("pairing")
        result = gr1.format
        expect(result).to eq "Be grateful for: pairing"
    end
end