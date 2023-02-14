require 'counter'

RSpec.describe Counter do
    it "adds 2 to 0 equalling 2" do
       counter = Counter.new
       counter.add(2)
       result = counter.report
       expect(result).to eq "Counted to 2 so far."
    end
end