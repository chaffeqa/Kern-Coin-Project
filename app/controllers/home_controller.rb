class HomeController < ApplicationController
  def home
    @bid_section = SiteTextSection.where(:section_name => 'bid').first
    @buy_section = SiteTextSection.where(:section_name => 'buy').first
    @welcome_section = SiteTextSection.where(:section_name => 'welcome').first
    @special_offers_section = SiteTextSection.where(:section_name => 'special_offers').first
    @categories = Category.get_inventory.children
    @recent_news = Post.recent_5
  end

end
