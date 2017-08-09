class MonstersController < ApplicationController
  def index
    @monsters = Monster.all

    respond_to do |format|
      format.html
      format.text

      format.json do
        render json: @monsters.map { |monster|
          {full_name: monster.name, hometown: monster.home, creepiness: monster.creepiness}
        }
      end

    end
  end
end


