class HomeController < ApplicationController
  def index
  end

  def page
    @page = Page.find(params[:id])
  end

  def all_pages
    @pages = Page.recent_first
  end

end
