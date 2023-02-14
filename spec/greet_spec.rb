require 'greet'

RSpec.describe "says hello, {name}!" do
    it "returns Hello, [name]!" do
        result = greet("Jane")
        expect(result).to eq "Hello, Jane!"
    end
end