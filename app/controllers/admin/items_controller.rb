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
    #    build_product_images
  end

  def edit
    #    build_product_images
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      redirect_to(admin_item_path(@item), :notice => 'Item was successfully created.')
    else
      #      build_product_images
      render :action => "new"
    end
  end

  def update
    if @item.update_attributes(params[:item])
      redirect_to( admin_item_path(@item), :notice => 'Item was successfully updated.')
    else
      #      build_product_images
      render :action => "edit"
    end
  end

  def destroy
    @item.destroy_attached_files
    @item.destroy
    redirect_to(admin_items_url) 
  end

  private
  def build_product_images
    (10 - @item.product_images.count).times  { @item.product_images.build }
  end

  def get_node
    @item = Item.find(params[:id])
    @node = @item.node
    super
  end

end
