class Admin::HomeController < ApplicationController
  layout 'admin_page'
  before_filter :check_admin
  before_filter :get_node, :except => [:new, :create, :index]
  
  def index
  end

end
