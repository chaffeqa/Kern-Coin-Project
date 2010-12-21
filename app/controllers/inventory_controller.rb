class InventoryController < ApplicationController
  helper_method :sort_column, :sort_direction


  def list
    @category = Category.find(params[:category_id]) unless params[:category_id].blank?
    
    @items = Item.get_for_sale.displayed
    puts "First Query - " + @category.search_categories_array.to_s
    @items = @items.in_category_array(@category.search_categories_array) unless params[:category_id].blank?
    @items = @items.scope_name(params[:search_text]).scope_details(params[:search_text]) unless params[:search_text].blank?
    @items = @items.scope_min_price(low_cost).scope_max_price(high_cost) unless params[:cost_range].blank?
    @items = @items.order(sort_column + " " + sort_direction)
    @items = @items.paginate :page => params[:page]

    
    @parameters = params
    @parameters.delete('action')
    @parameters.delete('controller')
    @parameters.delete('utf8')
    @parameters.delete('commit')
    @parameters.delete('sort')
    @parameters.delete('direction')
  end

  private

  def sort_column
    @sort = @sort || params[:sort] || ''
    Item.column_names.include?(@sort) ? @sort : "name"
  end

  def sort_direction
    @direction = @direction || params[:direction] || ''
    "ASC DESC".include?(@direction) ? @direction : "ASC"
  end

  def low_cost
    @min_price = params[:cost_range].split('-')[0] || 0
    @min_price
  end

  def high_cost
    @max_price = params[:cost_range].split('-')[1] || 1000000000
    @max_price
  end

 
end
