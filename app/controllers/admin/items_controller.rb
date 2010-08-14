class Admin::ItemsController < ApplicationController
  before_filter :require_user
  
  # GET /items
  # GET /items.xml
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.xml
  def show
    @item = Item.find(params[:id])
  end

  # GET /items/new
  # GET /items/new.xml
  def new
    @item = Item.new
    @item.product_images.build
  end

  # GET /items/1/edit
  def edit
    @item = Item.find(params[:id])
    @item.product_images.build
  end

  # POST /items
  # POST /items.xml
  def create
    @item = Item.new(params[:item])
    if @item.save
      redirect_to(admin_item_path(@item), :notice => 'Item was successfully created.')
    else
      render :action => "new"
    end
  end

  # PUT /items/1
  # PUT /items/1.xml
  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      redirect_to( admin_item_path(@item), :notice => 'Item was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /items/1
  # DELETE /items/1.xml
  def destroy
    @item = Item.find(params[:id])
    @item.destroy_attached_files
    @item.destroy
    redirect_to(admin_items_url) 
  end
end
