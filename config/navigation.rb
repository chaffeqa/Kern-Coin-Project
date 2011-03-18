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

  #  inventory = Category.get_inventory

  # Define the menu_level_1 navigation
  navigation.items do |menu_level_1|

    # you can also specify a css id or class to attach to this particular level
    # works for all levels of the menu
    #    menu_level_1.dom_id = 'nav-menu'
    menu_level_1.dom_class = 'nav-menu'
    @home_node = Node.home

    menu_level_1.item @home_node.menu_name.to_sym, 'Home', @home_node.url
    @home_node.children.displayed.each do |child_node_1|
      menu_level_1.item child_node_1.menu_name.to_sym, child_node_1.menu_name, child_node_1.url, :class => child_node_1.page_type do |menu_level_2|
        child_node_1.children.displayed.each do |child_node_2|
          menu_level_2.item child_node_2.menu_name.to_sym, child_node_2.menu_name, child_node_2.url, :class => child_node_2.page_type do |menu_level_3|
            child_node_2.children.displayed.each do |child_node_3|
              menu_level_3.item child_node_3.menu_name.to_sym, child_node_3.menu_name, child_node_3.url, :class => child_node_3.page_type do |menu_level_4|
                child_node_3.children.displayed.each do |child_node_4|
                  menu_level_4.item child_node_4.menu_name.to_sym, child_node_4.menu_name, child_node_4.url, :class => child_node_4.page_type do |menu_level_5|
                    child_node_4.children.displayed.each do |child_node_5|
                      menu_level_5.item child_node_5.menu_name.to_sym, child_node_5.menu_name, child_node_5.url, :class => child_node_5.page_type do |menu_level_6|
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    
    #    menu_level_1.item :inventory, 'Inventory', inventory_category_path(inventory) do |level_1|
    #      inventory.children.displayed.each do |sub_category|
    #        if sub_category.children.displayed.empty?
    #          level_1.item sub_category.title.to_sym, sub_category.title, inventory_category_path(sub_category)
    #        else
    #          level_1.item sub_category.title.to_sym, sub_category.title, inventory_category_path(sub_category) do |level_2|
    #            sub_category.children.displayed.each do |sub_sub_category|
    #              level_2.item sub_sub_category.title.to_sym, sub_sub_category.title, inventory_category_path(sub_sub_category)
    #            end
    #          end
    #        end
    #      end
    #    end
    #    menu_level_1.item :archives, 'Archives', home_path do |sub_nav|
    #      sub_nav.item :coinworld_archives, 'CoinWorld Archives', home_path
    #      sub_nav.item :inventory_archives, 'Inventory Archives', home_path
    #    end
    #    menu_level_1.item :auctions, 'Auctions', home_path
    #    menu_level_1.item :contact_us, 'Contact Us', new_question_path
    #    menu_level_1.item :admin, 'Admin', admin_home_path, :if => Proc.new { admin? }
   




    # You can turn off auto highlighting for a specific level
    #    menu_level_1.auto_highlight = false
    
    # Add an item to the menu_level_1 navigation. The following params apply:
    # key - a symbol which uniquely defines your navigation item in the scope of the menu_level_1_navigation
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
    #    menu_level_1.item :key_1, 'name', url, options
    
    # Add an item which has a sub navigation (same params, but with block)
    #    menu_level_1.item :key_2, 'name', url, options do |sub_nav|
    # Add an item to the sub navigation (same params again)
    #      sub_nav.item :key_2_1, 'name', url, options
    #    end
  
    # You can also specify a condition-proc that needs to be fullfilled to display an item.
    # Conditions are part of the options. They are evaluated in the context of the views,
    # thus you can use all the methods and vars you have available in the views.
    #    menu_level_1.item :key_3, 'Admin', url, :class => 'special', :if => Proc.new { current_user.admin? }
    #    menu_level_1.item :key_4, 'Account', url, :unless => Proc.new { logged_in? }

    
  
  end

 

  #  navigation.items do |admin|
  #    admin.item :pages_admin, 'Pages Admin', admin_pages_path
  #    admin.item :items_admin, 'Items Admin', admin_items_path
  #    admin.item :users_admin, 'Users Admin', admin_users_path
  #    admin.item :categories_pages_admin, 'Categories Admin', admin_categories_path
  #  end
  
end
