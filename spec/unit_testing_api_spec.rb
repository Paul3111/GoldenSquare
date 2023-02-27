require 'unit_testing_api'

RSpec.describe CatFacts do
  it "Returns a cat fact." do
    fake_requester = double :requester
    expect(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"Isaac Newton invented the cat flap. Newton was experimenting in a pitch-black room. Spithead, one of his cats, kept opening the door and wrecking his experiment. The cat flap kept both Newton and Spithead happy.","length":211}')
    fact1 = CatFacts.new(fake_requester)
    expect(fact1.provide).to eq "Cat fact: Isaac Newton invented the cat flap. Newton was experimenting in a pitch-black room. Spithead, one of his cats, kept opening the door and wrecking his experiment. The cat flap kept both Newton and Spithead happy."
  end
end
