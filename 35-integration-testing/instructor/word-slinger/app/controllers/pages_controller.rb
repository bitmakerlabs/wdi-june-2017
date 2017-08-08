class PagesController < ApplicationController

  def index
    @pages = Page.all
  end

  def show
    @page = Page.find_by(slug: params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new
    @page.title   = params[:page][:title]
    @page.slug    = params[:page][:slug]
    @page.content = params[:page][:content]

    @page.save

  end

end
