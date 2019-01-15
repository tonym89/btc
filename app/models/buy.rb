class Buy < ApplicationRecord
  belongs_to :user
  # validates :token, presence: true

require 'httparty'

def self.buy_price
  url = 'https://api.kraken.com/0/public/Ticker?pair=XXBTZEUR'
  response = HTTParty.get(url)
  response.parsed_response
  kraken_price = response.parsed_response["result"]["XXBTZEUR"]["c"][0].to_f
  buy_price = (kraken_price * 1.025)
end

end
