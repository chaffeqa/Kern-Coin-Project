module ApplicationHelper

  ################### Admin Helpers #####################

  # Anything passed into an <%= admin_area do %> ... <% end %> block in an .erb file will get surrounded by <div class="admin"></div>
  def admin_wrapper(&block)
    if admin?
      content_tag(:div, :class => "admin clearfix", &block)
    else
      content_tag(:div, &block)
    end
  end

  def admin_area(&block)
    content_tag(:div, :class => "admin", &block) if admin?
  end

  def admin_controls_area(&block)
    content_tag(:span, :class => "controls", &block) if admin?
  end

  def get_elem_link_to_action(element, action)
    { :controller => "admin/page_elems/#{element.elem_type.tableize}", :action => action, :id => element.elem, :shortcut => @node.shortcut }
  end

  #  def hidden_div_if(condition, attributes = {}, &block)
  #    if condition
  #      attributes["style" ] = "display: none"
  #    end
  #    content_tag("div" , attributes, &block)
  #  end

  ##########################################################

  # Form Helpers
  def remove_child_link(name, f)
    link_to(name, "javascript:void(0)", :class => "remove_child")
  end

  def add_child_link(name, association)
    link_to(name, "javascript:void(0)", :class => "add_child", :"data-association" => association)
  end

  def new_child_fields_template(form_builder, association, options = {})
    options[:object] ||= form_builder.object.class.reflect_on_association(association).klass.new
    options[:partial] ||= association.to_s.singularize
    options[:form_builder_local] ||= :f

    content_tag(:div, :id => "#{association}_fields_template", :style => "display: none") do
      form_builder.fields_for(association, options[:object], :child_index => "new_#{association}") do |f|
        render(:partial => options[:partial], :locals => {options[:form_builder_local] => f})
      end
    end
  end

  

  def display_nodes(nodes, parent_id )
    ret = "<ul>"
    for node in nodes
      if node.parent_id == nil
        node.parent_id = 0
      elsif node.parent_id == parent_id
        ret << display_node_list(node)
      end
    end
    ret << "</ul>"
  end

  def display_node_list(node, type='')
    ret = "<li id='node_#{node.id}' class='node' rel='#{type}'>"
#    ret << "<ins class='jstree-icon'>&nbsp;</ins>"
#    ret << link_to( node.menu_name , node.url )
    ret << "<a href='#{node.url}'><ins class='jstree-icon'></ins>#{node.menu_name}</a>"
    ret << display_nodes(node.children.displayed, node.id) if node.children.displayed.any?
    ret << "</li>"
  end



  def dynamic_pages_options_tree_recursive(node, addition)
    array = []
    array << ["#{addition} #{node.menu_name}", "#{node.id}"]
    node.children.dynamic_pages.each do |childnode|
      array += dynamic_pages_options_tree_recursive(childnode, "#{addition}---")
    end
    array
  end

  def cat_options_tree_recursive(node, addition)
    array = []
    array << ["#{addition} #{node.title}", "#{node.id}"]
    node.children.categories.each do |childnode|
      array += cat_options_tree_recursive(childnode, "#{addition}---")
    end
    array
  end


  def color_select
    [
      'Red',
      'Blue',
      'Green',
      'Yellow',
      'Purple',
      'Orange'
    ]
  end


  def new_asset
    unless @asset
      @asset = Ckeditor.image_model.new
    end
    @asset
  end

  def all_image_assets
    unless @image_assets
      @image_assets = Ckeditor.image_model.all
    end
    @image_assets
  end
  

end
