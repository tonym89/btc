class Buy < ApplicationRecord
  belongs_to :user
  # validates :token, presence: true

require 'httparty'

def self.btc_buy_price
  url = 'https://api.kraken.com/0/public/Ticker?pair=XXBTZEUR'
  response = HTTParty.get(url)
  response.parsed_response
  kraken_price = response.parsed_response["result"]["XXBTZEUR"]["c"][0].to_f
  buy_price = (kraken_price * 1.025)
end

def self.eth_buy_price
  url = 'https://api.kraken.com/0/public/Ticker?pair=XETHZEUR'
  response = HTTParty.get(url)
  response.parsed_response
  kraken_price = response.parsed_response["result"]["XETHZEUR"]["c"][0].to_f
  buy_price = (kraken_price * 1.025)
end

end
