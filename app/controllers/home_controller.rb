class HomeController < ApplicationController
  def index
    require 'json'
    require 'net/http'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @select_coins = ["BTC", "LTC", "XMR", "ADA"]
    
  end
  
  def about
    @var = "jagadish.dachepalli@gmail.com"
  end
  
  def lookup
    @var = params[:id]
    if @var
      @var = @var.upcase
    end
    
    if @var == ''
      @var = "Please enter some crypto currency type"
    end
    # require 'json'
    # require 'net/http'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
  end
end
