class Admin::CategoriesController < ApplicationController
  layout 'admin'

  # GET /categories
  # GET /categories.xml
  def index
    @inventory = Category.where(:title => 'Inventory').first
  end

  
  # GET /categories/new
  # GET /categories/new.xml
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
    @category = Category.find(params[:id])
  end

  # POST /categories
  # POST /categories.xml
  def create
    if @category.save
      redirect_to(admin_categories_path, :notice => 'Category was successfully Added.')
    else
      render :action => "new" 
    end
  end

  # PUT /categories/1
  # PUT /categories/1.xml
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      redirect_to(admin_categories_path, :notice => 'Category was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.xml
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to(admin_categories_url)
  end
end
