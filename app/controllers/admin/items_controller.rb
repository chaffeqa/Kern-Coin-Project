class Admin::ItemsController < ApplicationController
  helper_method :sort_column, :sort_direction
  layout 'admin'
  before_filter :check_admin
  before_filter :get_node, :except => [:new, :create, :index]
  
  def index
    @items = Item.paginate :page => params[:page], :order => (sort_column + " " + sort_direction)
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
    @item.nodes.build(:displayed => true)
  end

  def edit
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
    if @item.update_attributes(params[:item])
      redirect_to(shortcut_path(@item.nodes.first.shortcut), :notice => 'Item was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @item.destroy
    redirect_to(admin_items_url, :notice => 'Item was successfully destroyed.' )
  end

  private
  def build_product_images
    (10 - @item.product_images.count).times  { @item.product_images.build }
  end

  def get_node
    @item = Item.find(params[:id])
    @item.nodes.build(:displayed => true) unless @item.nodes.count > 0
    @node = @item.nodes.first
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
