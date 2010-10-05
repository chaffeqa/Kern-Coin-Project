class InventoryController < ApplicationController
  
  def category
    @category = Category.find( params[:id]) if params[:id]
    @category = Category.where(:title => 'Inventory').first unless params[:id]
  end

  def list
    @items = Item.get_for_sale.displayed
    @items = @items.where(:category_id => params[:category_id]) if params[:category_id] and not params[:category_id].empty?
    @items = @items.where(["name LIKE ? OR details LIKE ?", params[:search_text], params[:search_text]]) if params[:search_text] and not params[:search_text].empty?
    @items = @items.where(["cost <= ?", params[:cost_range]]) if params[:cost_range] and not params[:cost_range].empty?
    order_by = "name"
    order_by = params[:sort_by].to_s.gsub(/\\/, '\&\&').gsub(/'/, "''") if params[:sort_by]
    if params[:asc] and params[:asc] == "desc"
      @asc = "asc"
      @items = @items.order("#{order_by} asc")
    else
      @asc = "desc"
      @items = @items.order("#{order_by} desc")
    end
  end

  def view
    @item = Item.find(params[:id])
  end

 
end
