class Admin::ItemsController < ApplicationController
  helper_method :sort_column, :sort_direction
  layout 'admin'
  before_filter :check_admin
  
  def index
    @per_page = params[:per_page] || 10
    @items = Item.scoped
    @items = @items.scope_display(params[:displayed]) unless params[:displayed].blank?
    @items = @items.scope_for_sale(params[:for_sale]) unless params[:for_sale].blank?
    @items = @items.scope_category(params[:category]) unless params[:category].blank?
    @items = @items.scope_name(params[:name]) unless params[:name].blank?
    @items = @items.scope_item_id(params[:item_id]) unless params[:item_id].blank?
    @items = @items.scope_max_price(params[:max_price]) unless params[:max_price].blank?
    @items = @items.scope_min_price(params[:min_price]) unless params[:min_price].blank?
    @items = @items.paginate :page => params[:page], :per_page => @per_page, :order => (sort_column + " " + sort_direction)
  end


  def new
    @item = Item.new
    @item.nodes.build(:displayed => true)
  end

  def edit
    @item = Item.find(params[:id])
    @item.nodes.build(:displayed => true) unless @item.nodes.count > 0
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      redirect_to(admin_items_path, :notice => 'Item was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      redirect_to(admin_items_path, :notice => 'Item was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to(admin_items_url(), :notice => 'Item was successfully destroyed.' )
  end

  private

  def get_node
    super
  end

  def sort_column
    @sort = @sort || params[:sort] || ''
    Item.column_names.include?(@sort) ? @sort : "name"
  end

  def sort_direction
    @direction = @direction || params[:direction] || ''
    "ASC DESC".include?(@direction) ? @direction : "ASC"
  end

end
