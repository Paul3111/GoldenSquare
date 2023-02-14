require 'report_length'

RSpec.describe "returns the string length" do
    it "returns message and length if string length is 10" do
        result = report_length("somethings")
        expect(result).to eq "This string was 10 characters long."
    end
end