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

  

  def display_children_nodes(nodes )
    ret = "<ul>"
    for node in nodes
      ret << display_node_list(node)
    end
    ret << "</ul>"
  end

  def display_node_list(node)
    ret = "<li id='node_#{h(node.id)}'>"
    #    ret << link_to( node.menu_name , '#' )
    ret << "<a href='#'>#{h(node.menu_name)}</a>"
    ret << display_children_nodes(node.children.displayed) if node.children.displayed.any?
    ret << "</li>"
  end



  def dynamic_pages_options_tree_recursive(node, addition, neglected_id='')
    array = []
    array << ["#{addition} #{h(node.menu_name)}", "#{node.id}"] unless node.id == neglected_id
    node.children.dynamic_pages.each do |childnode|
      array += dynamic_pages_options_tree_recursive(childnode, "#{addition}---", neglected_id)
    end
    array
  end

  # returns an array representing the inventory category tree.  Uses the category.node.title and category.node.id.
  # Ex. [..., ['Biblical','1'], ['...Babylon', '2'], ...]
  def cat_options_tree_recursive(node, addition)
    array = []
    array << ["#{addition} #{h(node.title)}", "#{node.id}"]
    node.children.categories.each do |childnode|
      array += cat_options_tree_recursive(childnode, "#{addition}---")
    end
    array
  end

  # returns an array representing the inventory category tree.  Uses the category.title and category.id.
  # Ex. [..., ['Biblical','1'], ['...Babylon', '2'], ...]
  def cat_id_options_tree_recursive(node, addition)
    array = []
    array << ["#{addition} #{h(node.title)}", "#{node.page_id}"] if node.page_type == 'Category'
    node.children.categories.each do |childnode|
      array += cat_id_options_tree_recursive(childnode, "#{addition}---")
    end
    array
  end

  def item_options_tree(categories)
    array = []
    categories.each do |cat|
      if cat.has_items? or cat.node.children.empty?
        array << ["#{h(cat.title)}", "#{cat.node.id}"]
      end
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
  
  def sortable(column, title, addition_params={})
    css_class = (column == sort_column) ? "current #{sort_direction}" : nil
    direction = (column == sort_column && sort_direction == "ASC") ? "DESC" : "ASC"
    link_to title, {:sort => column, :direction => direction}.merge(addition_params), {:class => css_class}
  end

  

  #  ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  #    if instance.error_message.kind_of?(Array)
  #      %(<span class="field_with_errors">#{html_tag}</span>)
  #    else
  #      %(<span class="field_with_errors">#{html_tag}</span>)
  #    end
  #  end
end
