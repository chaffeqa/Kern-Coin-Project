module Admin::ItemsHelper
  def parsed_params
    new_params = {}
    new_params[:name]=params[:name] unless params[:name].blank?
    new_params[:item_id]=params[:item_id] unless params[:item_id].blank?
    new_params[:displayed]=params[:displayed] unless params[:displayed].blank?
    new_params[:for_sale]=params[:for_sale] unless params[:for_sale].blank?
    new_params[:min_price]=params[:min_price] unless params[:min_price].blank?
    new_params[:max_price]=params[:max_price] unless params[:max_price].blank?
    new_params[:category]=params[:category] unless params[:category].blank?
    new_params[:per_page]=@per_page || 10
    new_params
  end

  def full_params
    new_params = {}
    new_params[:name]=params[:name] unless params[:name].blank?
    new_params[:item_id]=params[:item_id] unless params[:item_id].blank?
    new_params[:displayed]=params[:displayed] unless params[:displayed].blank?
    new_params[:for_sale]=params[:for_sale] unless params[:for_sale].blank?
    new_params[:min_price]=params[:min_price] unless params[:min_price].blank?
    new_params[:max_price]=params[:max_price] unless params[:max_price].blank?
    new_params[:category]=params[:category] unless params[:category].blank?
    new_params[:sort]=params[:sort] unless params[:sort].blank?
    new_params[:direction]=params[:direction] unless params[:direction].blank?
    new_params[:per_page]=@per_page || 10
    new_params
  end
end