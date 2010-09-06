class HomeController < ApplicationController
  layout  'pages'

  def home
    @node = get_home_node
    get_template
    @bid_section = SiteTextSection.where(:section_name => 'bid').first
    @buy_section = SiteTextSection.where(:section_name => 'buy').first
    @welcome_section = SiteTextSection.where(:section_name => 'welcome').first
    @special_offers_section = SiteTextSection.where(:section_name => 'special_offers').first
    @categories = Category.get_inventory.children
    @recent_news = Post.recent_5
  end

  def legal
    @legal_section = SiteTextSection.where(:section_name => 'legal').first
  end

  def privacy_policy
    @privacy_policy_section = SiteTextSection.where(:section_name => 'privacy_policy').first
  end

  def terms_of_use
    @terms_of_use_section = SiteTextSection.where(:section_name => 'terms_of_use').first
  end

end
