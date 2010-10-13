class Admin::CategoriesController < ApplicationController
  layout 'admin'
  before_filter :check_admin
  before_filter :get_node, :except => [:new, :create, :index]

  def index
    @inventory = Category.where(:title => 'Inventory').first
  end

  
  def new
    @category = Category.new
    @category.build_node(:displayed => true)
  end

  def edit
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to(admin_categories_path, :notice => 'Category was successfully Added.')
    else
      render :action => "new" 
    end
  end

  def update
    if @category.update_attributes(params[:category])
      redirect_to(admin_categories_path, :notice => 'Category was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @category.destroy
    redirect_to(admin_categories_url, :notice => 'Category was successfully destroyed.')
  end

  def move_up
    @category.node.move_higher
    redirect_to admin_categories_path
  end

  def move_down
    @category.node.move_lower
    redirect_to admin_categories_path
  end
  
  private

  def get_node
    @category = Category.find(params[:id])
    @node = @category.node
    super
  end

end
