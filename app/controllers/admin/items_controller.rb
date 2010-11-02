class Admin::ItemsController < ApplicationController
  layout 'admin'
  before_filter :check_admin
  before_filter :get_node, :except => [:new, :create, :index]
  
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
    @item.build_node(:displayed => true)
  end

  def edit
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      redirect_to(shortcut_path(@item.node.shortcut), :notice => 'Item was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    if @item.update_attributes(params[:item])
      redirect_to(shortcut_path(@item.node.shortcut), :notice => 'Item was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @item.destroy
    redirect_to(admin_items_url) 
  end

  private
  def build_product_images
    (10 - @item.product_images.count).times  { @item.product_images.build }
  end

  def get_node
    @item = Item.find(params[:id])
    @item.build_node(:displayed => true) unless @item.node
    @node = @item.node
    super
  end

end
