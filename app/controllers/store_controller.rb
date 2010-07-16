class StoreController < ApplicationController
  before_filter :find_cart, :except => :empty_cart
  before_filter :require_user, :only => [:add_to_cart, :empty_cart]
  
  def categories
    @categories = Category.order("title desc")
  end

  def list
    @items = Item.get_for_sale.displayed
    @items = @items.where(:category_id => params[:category_id]) if params[:category_id]
    if params[:asc] == "desc"
      @items = @items.order(["? desc", params[:order_by] ||= 'title'])
    else
      @items = @items.order(["? asc", params[:order_by] ||= 'title'])
    end
  end

  def view
    @item = Item.find(params[:id])
  end

 

  def add_to_cart
    item = Item.find(params[:id])
    @current_item = @cart.add_item(item)
    respond_to do |format|
      format.js if request.xhr?
      format.html {redirect_to( :back || store_categories_url)}
    end    
    #TODO make protected error method
  rescue ActiveRecord::RecordNotFound
    logger.error("Attempt to access invalid item #{params[:id]}" )
    redirect_to( :back || store_categories_url)
  end

  def empty_cart
    session[:cart] = nil
    respond_to do |format|
      format.js if request.xhr?
      format.html {redirect_to( :back || store_categories_url)}
    end
  end



  
  private

  def find_cart
    @cart = (session[:cart] ||= Cart.new)
  end

end
