require 'present'

RSpec.describe Present do
    context "returns error when not nil" do
        it "fails" do
            box1 = Present.new
            expect { box1.unwrap() }.to raise_error "No contents have been wrapped."
        end
    end
end