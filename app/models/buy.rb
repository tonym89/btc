class Buy < ApplicationRecord
  belongs_to :user
  # validates :token, presence: true

require 'httparty'

private

def self.btc_buy_price
  url = 'https://api.kraken.com/0/public/Ticker?pair=XXBTZEUR'
  response = HTTParty.get(url)
  response.parsed_response
  kraken_price = response.parsed_response["result"]["XXBTZEUR"]["c"][0].to_f
  buy_price = (kraken_price * 1.025).round(2)
end

def self.eth_buy_price
  url = 'https://api.kraken.com/0/public/Ticker?pair=XETHZEUR'
  response = HTTParty.get(url)
  response.parsed_response
  kraken_price = response.parsed_response["result"]["XETHZEUR"]["c"][0].to_f
  buy_price = (kraken_price * 1.025).round(2)
end

def self.bch_buy_price
  url = 'https://api.kraken.com/0/public/Ticker?pair=BCHEUR'
  response = HTTParty.get(url)
  response.parsed_response
  kraken_price = response.parsed_response["result"]["BCHEUR"]["c"][0].to_f
  buy_price = (kraken_price * 1.025).round(2)
end

def self.xrp_buy_price
  url = 'https://api.kraken.com/0/public/Ticker?pair=XXRPZEUR'
  response = HTTParty.get(url)
  response.parsed_response
  kraken_price = response.parsed_response["result"]["XXRPZEUR"]["c"][0].to_f
  buy_price = (kraken_price * 1.025).round(2)
end

def self.eos_buy_price
  url = 'https://api.kraken.com/0/public/Ticker?pair=EOSEUR'
  response = HTTParty.get(url)
  response.parsed_response
  kraken_price = response.parsed_response["result"]["EOSEUR"]["c"][0].to_f
  buy_price = (kraken_price * 1.025).round(2)
end

end
