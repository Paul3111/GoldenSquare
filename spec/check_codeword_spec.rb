require 'check_codeword'

RSpec.describe "checks codeword" do
    it "checks if codeword is horse" do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end
    
    it "checks if 1st letter is h and last letter is e" do
        result = check_codeword("hate")
        expect(result).to eq "Close, but nope."
    end

    it "checks if codeword is totally incorrect" do
        result = check_codeword("hunt")
        expect(result).to eq "WRONG!"
    end
end