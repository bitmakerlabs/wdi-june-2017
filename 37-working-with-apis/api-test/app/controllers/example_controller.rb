class ExampleController < ApplicationController
  def index
    response = HTTParty.get("https://swapi.co/api/films")
    body = JSON.parse(response.body)

    films = body["results"]

    titles = []

    films.each do |film|
      titles << film["title"]
    end

    render json: { titles: titles }
  end
end
