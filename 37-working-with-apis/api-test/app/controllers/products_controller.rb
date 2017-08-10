class ProductsController < ApplicationController
  def index
    response = HTTParty.get("https://lcboapi.com/products?access_key=#{ENV["LCBO_KEY"]}&q=beer")
    body = JSON.parse(response.body)

    @beers = body["result"]
  end
end
