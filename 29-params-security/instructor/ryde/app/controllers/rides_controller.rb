class RidesController < ApplicationController
  def index
    Rails.logger.info "**** params[:controller] = #{ params[:controller] }"
    Rails.logger.info "**** params[:action] = #{ params[:action] }"
    Rails.logger.info "**** params[:lang] = #{ params[:lang] }"
    Rails.logger.info "**** params[:country] = #{ params[:country] }"

    @lang    = params[:lang]
    @country = params[:country]
  end

  def show
    @ryde_id = params[:id]
  end
end
