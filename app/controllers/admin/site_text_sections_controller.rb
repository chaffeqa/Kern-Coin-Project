class Admin::SiteTextSectionsController < ApplicationController
  before_filter :require_user

  def index
    @site_text_sections = SiteTextSection.all
  end


  def show
    @site_text_section = SiteTextSection.find(params[:id])
  end


  def new
    @site_text_section = SiteTextSection.new
  end


  def edit
    @site_text_section = SiteTextSection.find(params[:id])
  end


  def create
    @site_text_section = SiteTextSection.new(params[:site_text_section])
    if @site_text_section.save
      redirect_to(admin_site_text_section_path(@site_text_section), :notice => 'Site text section was successfully created.')
    else
      render :action => "new"
    end
  end


  def update
    @site_text_section = SiteTextSection.find(params[:id])
    if @site_text_section.update_attributes(params[:site_text_section])
      redirect_to(admin_site_text_section_path(@site_text_section), :notice => 'Site text section was successfully updated.')
    else
      render :action => "edit"
    end
  end


  def destroy
    @site_text_section = SiteTextSection.find(params[:id])
    @site_text_section.destroy
    redirect_to(admin_site_text_sections_url)
  end
end
