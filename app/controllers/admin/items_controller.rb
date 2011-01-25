class Admin::ItemsController < ApplicationController
  helper_method :sort_column, :sort_direction
  layout 'admin'
  before_filter :check_admin
  before_filter :persist_filter_parameters
  
  def index
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
      redirect_to(shortcut_path(@item.nodes.first.shortcut), :notice => 'Item was successfully created.')
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
    redirect_to(admin_items_url(@full_params), :notice => 'Item was successfully destroyed.' )
  end

  private

  def persist_filter_parameters
    create_params_session
#    @parsed_params = {}
#    @parsed_params[:name]=session[:name] unless params[:name].blank?
#    @parsed_params[:item_id]=session[:item_id] unless params[:item_id].blank?
#    @parsed_params[:displayed]=session[:displayed] unless params[:displayed].blank?
#    @parsed_params[:for_sale]=session[:for_sale] unless params[:for_sale].blank?
#    @parsed_params[:min_price]=session[:min_price] unless params[:min_price].blank?
#    @parsed_params[:max_price]=session[:max_price] unless params[:max_price].blank?
#    @parsed_params[:category]=session[:category] unless params[:category].blank?
#    @parsed_params[:per_page]=@per_page || 10


    @full_params = {}
    @full_params[:name]=session[:name] unless session[:name].blank?
    @full_params[:item_id]=session[:item_id] unless session[:item_id].blank?
    @full_params[:displayed]=session[:displayed] unless session[:displayed].blank?
    @full_params[:for_sale]=session[:for_sale] unless session[:for_sale].blank?
    @full_params[:min_price]=session[:min_price] unless session[:min_price].blank?
    @full_params[:max_price]=session[:max_price] unless session[:max_price].blank?
    @full_params[:category]=session[:category] unless session[:category].blank?
    @full_params[:sort]=session[:sort] unless session[:sort].blank?
    @full_params[:direction]=session[:direction] unless session[:direction].blank?
    @full_params[:per_page]= session[:per_page]

  end

  def create_params_session
    session[:name]=params[:name] unless params[:name].blank?
    session[:item_id]=params[:item_id] unless params[:item_id].blank?
    session[:displayed]=params[:displayed] unless params[:displayed].blank?
    session[:for_sale]=params[:for_sale] unless params[:for_sale].blank?
    session[:min_price]=params[:min_price] unless params[:min_price].blank?
    session[:max_price]=params[:max_price] unless params[:max_price].blank?
    session[:category]=params[:category] unless params[:category].blank?
    session[:sort]=params[:sort] unless params[:sort].blank?
    session[:direction]=params[:direction] unless params[:direction].blank?
    session[:per_page]= params[:per_page] unless params[:per_page].blank?
    session[:per_page]= 10 if  session[:per_page].blank?
  end

  def sort_column
    @sort = @sort || session[:sort] || ''
    Item.column_names.include?(@sort) ? @sort : "name"
  end

  def sort_direction
    @direction = @direction || session[:direction] || ''
    "ASC DESC".include?(@direction) ? @direction : "ASC"
  end

end
