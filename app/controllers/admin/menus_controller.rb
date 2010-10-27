class Admin::MenusController < ApplicationController
  layout 'admin'
  before_filter :check_admin, :get_home_node

  def index
  end

  def sort
    Node.order_tree(params)
    render :nothing => true
  end


end