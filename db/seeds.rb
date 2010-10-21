home_page = DynamicPage.create(:template_name => 'Inside', :node_attributes=>{:menu_name => 'Home', :title => 'Home', :shortcut => 'Home', :displayed => true})
home_node = home_page.node
blogs_node = home_node.children.create(:menu_name => 'Blogs', :title => 'Blogs', :shortcut => 'Blogs', :displayed => false)
calendars_node = home_node.children.create(:menu_name => 'Calendars', :title => 'Calendars', :shortcut => 'Calendars', :displayed => false)


