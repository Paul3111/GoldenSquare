require 'json'
require 'net/http'

class CatFacts
    def initialize(requester)
        @requester = requester
    end
  def provide
    return "Cat fact: #{get_cat_fact["fact"]}"
  end

  private

  def get_cat_fact
    text_response = @requester.get(URI("https://catfact.ninja/fact"))
    return JSON.parse(text_response)
  end
end

#facts = CatFacts.new
#puts facts.provide
# To see the actual response format from the server use: curl "https://catfact.ninja/fact"
