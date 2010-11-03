class InventoryController < ApplicationController
  helper_method :sort_column, :sort_direction


  def list
    @items = Item.get_for_sale.displayed
    @items = @items.joins(:node).where('nodes.parent_id' => Node.select(:id).where(:page_type => 'Category', :page_id => params[:category_id])) unless params[:category_id].blank?
    @items = @items.where(["name LIKE ? OR details LIKE ?", params[:search_text], params[:search_text]]) unless params[:search_text].blank?
    @items = @items.where(["cost <= ?", params[:cost_range]]) unless params[:cost_range].blank?
    @items = @items.order(sort_column + " " + sort_direction)
    @items = @items.paginate :page => params[:page]

    
    @params = params
    @params.delete('action')
    @params.delete('controller')
    @params.delete('utf8')
    @params.delete('commit')
    @params.delete('sort')
    @params.delete('direction')
  end

  private

  def sort_column
    Item.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

 
end
