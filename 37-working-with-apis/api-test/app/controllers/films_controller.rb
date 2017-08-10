class FilmsController < ApplicationController
  def index
    response = HTTParty.get("https://swapi.co/api/films")
    body = JSON.parse(response.body)

    @films = body["results"]
  end
end
