class CheckoutController < ApplicationController
  before_filter :find_cart, :except => :empty_cart
  before_filter :require_user
  
  def view_cart
    if @cart.items.empty?
      redirect_to( :back || store_categories_url) 
    else
      @sale = current_user.sales.build
    end
  end

  def personal_info
    @sale = current_user.sales.build(params[:sale])
  end

  def billing_info
    @sale = current_user.sales.build(params[:sale])
  end

  def review_sale
    @sale = current_user.sales.build(params[:sale])
  end

  def save_sale
    @sale = current_user.sales.build(params[:sale])
    @sale.add_sale_items_from_cart(@cart)
    if @sale.save
      session[:cart] = nil
      redirect_to(:action => 'checkout', :id => @sale)
    else
      render :action => 'review_sale'
    end
  end

  def checkout
    @sale = Sale.find(params[:id])
  end






  private

  def find_cart
    @cart = (session[:cart] ||= Cart.new)
  end
end
