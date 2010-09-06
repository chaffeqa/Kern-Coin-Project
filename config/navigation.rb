# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|  
  # Specify a custom renderer if needed. 
  # The default renderer is SimpleNavigation::Renderer::List which renders HTML lists.
  # The renderer can also be specified as option in the render_navigation call. 
  # navigation.renderer = Your::Custom::Renderer
  
  # Specify the class that will be applied to active navigation items. Defaults to 'selected'
  # navigation.selected_class = 'your_selected_class'
    
  # Item keys are normally added to list items as id.
  # This setting turns that off
  # navigation.autogenerate_item_ids = false
  
  # You can override the default logic that is used to autogenerate the item ids.
  # To do this, define a Proc which takes the key of the current item as argument.
  # The example below would add a prefix to each key.
  # navigation.id_generator = Proc.new {|key| "my-prefix-#{key}"}

  # The auto highlight feature is turned on by default.
  # This turns it off globally (for the whole plugin)
  # navigation.auto_highlight = false

  inventory = Category.get_inventory

  # Define the primary navigation
  navigation.items do |primary|

    # you can also specify a css id or class to attach to this particular level
    # works for all levels of the menu
    #    primary.dom_id = 'nav-menu'
    primary.dom_class = 'nav-menu'


    primary.item :home, 'Home', home_path do |home_level|
      @home_node ||= Node.where(:menu_name => 'Home').first
      @home_node.nodes.each do |child_node|
        if child_node.nodes.empty?
          home_level.item child_node.shortcut.to_sym, child_node.menu_name, shortcut_path(:shortcut => child_node.shortcut)
        else
          home_level.item child_node.shortcut.to_sym, child_node.menu_name, shortcut_path(:shortcut => child_node.shortcut) do |sub_menu|
            child_node.nodes.each do |sub_child_node|
              sub_menu.item sub_child_node.shortcut.to_sym, sub_child_node.menu_name, shortcut_path(:shortcut => sub_child_node.shortcut)
            end
          end
        end
      end
    
      primary.item :inventory, 'Inventory', inventory_category_path(inventory) do |level_1|
        inventory.children.each do |sub_category|
          if sub_category.children.empty?
            level_1.item sub_category.title.to_sym, sub_category.title, inventory_category_path(sub_category)
          else
            level_1.item sub_category.title.to_sym, sub_category.title, inventory_category_path(sub_category) do |level_2|
              sub_category.children.each do |sub_sub_category|
                level_2.item sub_sub_category.title.to_sym, sub_sub_category.title, inventory_category_path(sub_sub_category)
              end
            end
          end
        end
      end
      primary.item :archives, 'Archives', home_path do |sub_nav|
        sub_nav.item :coinworld_archives, 'CoinWorld Archives', home_path
        sub_nav.item :inventory_archives, 'Inventory Archives', home_path
      end
      primary.item :auctions, 'Auctions', home_path
      primary.item :contact_us, 'Contact Us', new_question_path
      primary.item :admin, 'Admin', admin_home_path, :if => Proc.new { admin? }
    end




    # You can turn off auto highlighting for a specific level
    #    primary.auto_highlight = false
    
    # Add an item to the primary navigation. The following params apply:
    # key - a symbol which uniquely defines your navigation item in the scope of the primary_navigation
    # name - will be displayed in the rendered navigation. This can also be a call to your I18n-framework.
    # url - the address that the generated item links to. You can also use url_helpers (named routes, restful routes helper, url_for etc.)
    # options - can be used to specify attributes that will be included in the rendered navigation item (e.g. id, class etc.)
    #           some special options that can be set:
    #           :if - Specifies a proc to call to determine if the item should
    #                 be rendered (e.g. <tt>:if => Proc.new { current_user.admin? }</tt>). The
    #                 proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :unless - Specifies a proc to call to determine if the item should not
    #                     be rendered (e.g. <tt>:unless => Proc.new { current_user.admin? }</tt>). The
    #                     proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :method - Specifies the http-method for the generated link - default is :get.
    #           :highlights_on - if autohighlighting is turned off and/or you want to explicitly specify
    #                            when the item should be highlighted, you can set a regexp which is matched
    #                            against the current URI.
    #
    #    primary.item :key_1, 'name', url, options
    
    # Add an item which has a sub navigation (same params, but with block)
    #    primary.item :key_2, 'name', url, options do |sub_nav|
    # Add an item to the sub navigation (same params again)
    #      sub_nav.item :key_2_1, 'name', url, options
    #    end
  
    # You can also specify a condition-proc that needs to be fullfilled to display an item.
    # Conditions are part of the options. They are evaluated in the context of the views,
    # thus you can use all the methods and vars you have available in the views.
    #    primary.item :key_3, 'Admin', url, :class => 'special', :if => Proc.new { current_user.admin? }
    #    primary.item :key_4, 'Account', url, :unless => Proc.new { logged_in? }

    
  
  end

 

  #  navigation.items do |admin|
  #    admin.item :pages_admin, 'Pages Admin', admin_pages_path
  #    admin.item :items_admin, 'Items Admin', admin_items_path
  #    admin.item :users_admin, 'Users Admin', admin_users_path
  #    admin.item :categories_pages_admin, 'Categories Admin', admin_categories_path
  #  end
  
end