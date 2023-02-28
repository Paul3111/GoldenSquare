# Test drive a class that behaves like this:
#string_repeater = StringRepeater.new(Kernel)
#string_repeater.run
# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX

require 'unit_testing_terminal_io'

RSpec.describe StringRepeater do
  it "Returns a text 'TWIX' repeated ten times" do
    io = double :io
    expect(io).to receive(:puts).with("Hello. I will repeat a string many times.")
    expect(io).to receive(:puts).with("Please enter a string")
    expect(io).to receive(:gets).and_return("TWIX")
    expect(io).to receive(:puts).with("Please enter a number of repeats")
    expect(io).to receive(:gets).and_return("10")
    expect(io).to receive(:puts).with("Here is your result: TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX")
    
    string_repeater = StringRepeater.new(io)
    string_repeater.run
    end
end