require 'string_builder'

RSpec.describe StringBuilder do
    it "returns the string and its length" do
        string = StringBuilder.new
        string.add("Hello")
        result1 = string.size
        result2 = string.output
        expect(result1).to eq 5
        expect(result2).to eq "Hello"
    end
end
