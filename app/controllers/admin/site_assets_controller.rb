class Admin::SiteAssetsController < ApplicationController
  layout 'admin_page'
    
  def create
    @asset = Ckeditor.image_model.create!(params[:asset])
    redirect_to admin_site_assets_path()
  end

  def index
    @assets = Ckeditor.image_model.all
  end

  def destroy
    if request.delete?
      @asset = Ckeditor.image_model.find(params[:id])
      @asset.destroy
      flash[:notice] = 'Image successfully removed from the site'
      redirect_to admin_site_assets_path
    end
  end

end
