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

  

  def display_menu_list(html_id = 'menu-list')
    ret = "<ul id='#{html_id}'><li id='#{@home_node.id}'> #{@home_node.menu_name}     #{link_to 'Show', @home_node.url}"
    #    ret += " | #{link_to 'X', admin_node_path(@home_node.id), :confirm => 'Are you sure?', :method => :delete}"
    ret += display_tree_recursive(@home_node)
    ret += "</li>"
    ret += "</ul>"
  end

  def menu_tree_children(node)
#    unless node.children.displayed.empty?
#      content_tag(:ul) do
#        node.children.displayed.each do |childnode|
          render(:partial => 'admin/menus/menu', :locals => {:node => node})
#        end
#      end
#    end
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
