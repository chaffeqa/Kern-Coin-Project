class InventoryController < ApplicationController
  helper_method :sort_column, :sort_direction


  def list
    @items = Item.get_for_sale.displayed
    @items = @items.joins(:nodes).where('nodes.parent_id' => Node.select(:id).where(:page_type => 'Category', :page_id => params[:category_id])) unless params[:category_id].blank?
    @items = @items.where(["name LIKE ? OR details LIKE ?", params[:search_text], params[:search_text]]) unless params[:search_text].blank?
    @items = @items.where(["cost <= ?", params[:cost_range]]) unless params[:cost_range].blank?
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

 
end
