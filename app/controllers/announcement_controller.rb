class AnnouncementController < ApplicationController
  def announcement
    @page = Page.find(params[:id])
  end

  def announcements
    @pages = Page.recent_first
  end

end
