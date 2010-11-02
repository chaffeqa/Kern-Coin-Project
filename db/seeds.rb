home_page = DynamicPage.create(:template_name => 'Home', :node_attributes=>{:menu_name => 'Home', :title => 'Home', :shortcut => 'Home', :displayed => true})
home_node = home_page.node
blogs_node = home_node.children.create(:menu_name => 'Blogs', :title => 'Blogs', :shortcut => 'Blogs', :displayed => false)
calendars_node = home_node.children.create(:menu_name => 'Calendars', :title => 'Calendars', :shortcut => 'Calendars', :displayed => false)


Ckeditor.image_model.create!([
    {:data_file_name => 'view-store.png', :data_content_type => 'image/png', :data_file_size => 9414, :type => 'Ckeditor::Picture', :locale => 0},
    {:data_file_name => 'view-auctions.png', :data_content_type => 'image/png', :data_file_size => 9609, :type => 'Ckeditor::Picture', :locale => 0},
    {:data_file_name => 'view-offers.png', :data_content_type => 'image/png', :data_file_size => 3946, :type => 'Ckeditor::Picture', :locale => 0},
    {:data_file_name => 'learn-more.png', :data_content_type => 'image/png', :data_file_size => 7729, :type => 'Ckeditor::Picture', :locale => 0},
    {:data_file_name => 'view-archive.png', :data_content_type => 'image/png', :data_file_size => 8415, :type => 'Ckeditor::Picture', :locale => 0}
  ])


buy_element = home_page.elements.create(:page_area => 2, :title => 'Buy', :display_title => true)
buy_element.elem = TextElem.create(:text => '<p>
      We offer an inventory that is second-to-none featuring ancient,
      foreign, medieval, US and numerous other types of coins. Visit
      our online store, view our inventory, and purchase coins!
    </p><a href="/inventory"><img src="/site_assets/images/1/content_view-store.png" alt="View Our Online Store" /></a>')
buy_element.save!

bid_element = home_page.elements.create(:page_area => 3, :title => 'Bid', :display_title => true)
bid_element.elem = TextElem.create(:text => '<p>
      Our website features a 100% exclusive auction
      that allows our loyal customers to bid on rare,
      unique and valuable coins!
    </p><a href="/auction"><img src="/site_assets/images/2/content_view-auctions.png" alt="View Current Auctions" /></a>')
bid_element.save! 

special_offers_element = home_page.elements.create(:page_area => 4, :title => 'Special Offers', :display_title => false)
special_offers_element.elem = TextElem.create(:text => '<p>
      Please take a moment to view our current special offers on coins of all sorts!
    </p><a href="/special"><img style="margin: 30px -4px 0;" src="/site_assets/images/3/content_view-offers.png" alt="View Offers" /></a>')
special_offers_element.save!

welcome_element = home_page.elements.create(:page_area => 5,  :title => 'Welcome', :display_title => true)
welcome_element.elem = TextElem.create(:text => '<p>
      Since 1971 Jonathan Kern has been a knowledgeable dealer and
      collector in ancient, foreign, and U.S. coinage along with tokens, paper
      money and antiquities.
    </p>
    <p>
      We take great pride in putting the customer first. Please take a look at
      our current inventory listing or drop us a line so we may help you with
      your numismatic need.
    </p><a href="/about-us"><img style="float: right; margin-top: 8px;" src="/site_assets/images/4/content_learn-more.png" alt="Learn More About Us" /></a>')
welcome_element.save!





auction_page = DynamicPage.create(:template_name => 'Inside', :node_attributes=>{:menu_name => 'Auctions', :title => 'Auctions', :shortcut => 'Auctions', :displayed => true} )
home_node.children << auction_page.node
auction_page.save!


archives_page = DynamicPage.create(:template_name => 'Inside', :node_attributes=>{:menu_name => 'Archives', :title => 'Archives', :shortcut => 'Archives', :displayed => true})
home_node.children << archives_page.node
archives_page.save!

home_node.children.create(:menu_name => 'Contact Us', :title => 'Contact Us', :shortcut => 'Contact-Us', :displayed => true, :controller => 'questions', :action => 'new')
about_us_page = DynamicPage.create(:template_name => 'Inside', :node_attributes=>{:menu_name => 'About Us', :title => 'About Us', :shortcut => 'About-Us', :displayed => true})
home_node.children << about_us_page.node
about_us_page.save!
about_us_element = about_us_page.elements.create(:page_area => 1,  :title => 'About Kern Coin', :display_title => true)
about_us_element.elem = TextElem.create(:text => '<p>
      Lorem ipsum dolor sit amet, emphasis consectetuer adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus.
      Nunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl.
      Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Maecenas ornare tortor.
      Donec sed tellus eget sapien fringilla nonummy. Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc.
      Morbi imperdiet augue quis tellus.
    </p>')
about_us_element.save!



news_page = Blog.create!(:banner => '', :title => 'News', :node_attributes=>{:menu_name => 'News', :title => 'News', :shortcut => 'News', :displayed => true})
blogs_node.children << news_page.node
news_page.save!

recent_news_element = home_page.elements.create(:page_area => 6, :title => 'Recent News', :display_title => true)
recent_news_element.elem = news_page.blog_elems.create!(:count_limit => 5, :display_type => 'Archive')
recent_news_element.save!
recent_news_link_element = home_page.elements.create(:page_area => 6,  :title => 'Recent News Archive', :display_title => false)
recent_news_link_element.elem = TextElem.create(:text => '<a href="/Archives"><img style="float: right; margin-top: 19px;" src="/site_assets/images/5/content_view-archive.png" alt="View News Archive" /></a>')
recent_news_link_element.save!


admin_node = home_node.children.create(:menu_name => 'Administrative', :title => 'Administrative', :shortcut => 'admin', :displayed => false)
#site_page_admin_node = admin_node.children.create(:menu_name => 'Site Page Admin', :title => 'Site Page Admin', :displayed => true, :controller => 'admin/nodes')
#categories_admin_node = admin_node.children.create(:menu_name => 'Inventory Categories Admin', :title => 'Inventory Categories Admin', :displayed => true, :controller => 'admin/categories')
#items_admin_node = admin_node.children.create(:menu_name => 'Inventory Items Admin', :title => 'Inventory Items Admin', :displayed => true, :controller => 'admin/items')
#site_images_admin_node = admin_node.children.create(:menu_name => 'Site Images Admin', :title => 'Site Images Admin', :displayed => true, :controller => 'admin/site_assets')
#questions_admin_node = admin_node.children.create(:menu_name => 'Questions Admin', :title => 'Questions Admin', :displayed => true, :controller => 'admin/questions')
#blog_admin_node = admin_node.children.create(:menu_name => 'News Article Admin', :title => 'News Article Admin', :displayed => true, :controller => 'admin/posts')

#site_page_admin_node.children.create(:menu_name => 'New Page', :title => 'New Page', :displayed => true, :controller => 'admin/nodes', :action => 'new')
#categories_admin_node.children.create(:menu_name => 'New Category', :title => 'New Category', :displayed => true, :controller => 'admin/categories', :action => 'new')
#items_admin_node.children.create(:menu_name => 'New Item', :title => 'New Item', :displayed => true, :controller => 'admin/items', :action => 'new')






# Categories
inventory = Category.create!({:title => 'Inventory', :node_attributes=>{:menu_name => 'Inventory', :title => 'Inventory', :shortcut => 'Inventory', :displayed => true}})
home_node.children << inventory.node
inventory_categories = Category.create([
    { :title => 'Special Offers', :node_attributes=>{:menu_name => 'Special Offers', :title => 'Special Offers', :shortcut => 'Special-Offers', :displayed => true} },
    { :title => 'Ancient', :node_attributes=>{:menu_name => 'Ancient', :title => 'Ancient', :shortcut => 'Ancient', :displayed => true} },
    { :title => 'Errors', :node_attributes=>{:menu_name => 'Errors', :title => 'Errors', :shortcut => 'Errors', :displayed => true} },
    { :title => 'Foreign', :description => 'Generally these coins will be dated in the 1500s to the current date.', :node_attributes=>{:menu_name => 'Foreign', :title => 'Foreign', :shortcut => 'Foreign', :displayed => true} },
    { :title => 'Gold Bullion', :node_attributes=>{:menu_name => 'Gold Bullion', :title => 'Gold Bullion', :shortcut => 'Gold-Bullion', :displayed => true} },
    { :title => 'Jewelry Coins', :node_attributes=>{:menu_name => 'Jewelry Coins', :title => 'Jewelry Coins', :shortcut => 'Jewelry-Coins', :displayed => true} },
    { :title => 'Medieval', :node_attributes=>{:menu_name => 'Medieval', :title => 'Medieval', :shortcut => 'Medieval', :displayed => true} },
    { :title => 'Shipreck Coins and Artifacts', :node_attributes=>{:menu_name => 'Shipreck Coins and Artifacts', :title => 'Shipreck Coins and Artifacts', :shortcut => 'Shipreck-Coins-and-Artifacts', :displayed => true} },
    { :title => 'Silver Bullion', :node_attributes=>{:menu_name => 'Silver Bullion', :title => 'Silver Bullion', :shortcut => 'Silver-Bullion', :displayed => true} },
    { :title => 'U.S. Coinage', :node_attributes=>{:menu_name => 'U.S. Coinage', :title => 'U.S. Coinage', :shortcut => 'US-Coinage', :displayed => true} },
    { :title => 'U.S. Proof and Mint Sets', :node_attributes=>{:menu_name => 'U.S. Proof and Mint Sets', :title => 'U.S. Proof and Mint Sets', :shortcut => 'US-Proof-and-Mint-Sets', :displayed => true} },
    { :title => 'U.S. Territorial Gold', :node_attributes=>{:menu_name => 'U.S. Territorial Gold', :title => 'U.S. Territorial Gold', :shortcut => 'US-Territorial-Gold', :displayed => true} },
    { :title => 'U.S. Tokens', :node_attributes=>{:menu_name => 'U.S. Tokens', :title => 'U.S. Tokens', :shortcut => 'US-Tokens', :displayed => true} },
    { :title => 'U.S. Treasures', :node_attributes=>{:menu_name => 'U.S. Treasures', :title => 'U.S. Treasures', :shortcut => 'US-Treasures', :displayed => true} },
    { :title => 'U.S. Medals and Awards', :node_attributes=>{:menu_name => 'U.S. Medals and Awards', :title => 'U.S. Medals and Awards', :shortcut => 'US-Medals-and-Awards', :displayed => true} }
  ])
inventory_categories.each do |category| 
  inventory.node.children << category.node
end



# Second Tier
ancient = Category.where(:title => 'Ancient').first
ancient_categories = Category.create([
    { :title => 'Biblical', :node_attributes=>{:menu_name => 'Biblical', :title => 'Biblical', :shortcut => 'Biblical', :displayed => true}  },
    { :title => 'Byzantine', :node_attributes=>{:menu_name => 'Byzantine', :title => 'Byzantine', :shortcut => 'Byzantine', :displayed => true}  },
    { :title => 'Greek', :description => 'Amazing Numismatic Artwork', :node_attributes=>{:menu_name => 'Greek', :title => 'Greek', :shortcut => 'Greek', :displayed => true}  },
    { :title => 'Jewish Coinage', :description => 'Generally these coins will be dated in the 1500s to the current date.', :node_attributes=>{:menu_name => 'Jewish Coinage', :title => 'Jewish Coinage', :shortcut => 'Jewish-Coinage', :displayed => true}  },
    { :title => 'Parthia', :node_attributes=>{:menu_name => 'Parthia', :title => 'Parthia', :shortcut => 'Parthia', :displayed => true}  },
    { :title => 'Roman Imperatoral', :description => 'From the deterioration of the Republic to the battle of Actium.', :node_attributes=>{:menu_name => 'Roman Imperatoral', :title => 'Roman Imperatoral', :shortcut => 'Roman-Imperatoral', :displayed => true}  },
    { :title => 'Roman Imperial', :description => 'Commonly encountered titles include Caesar, originated with Julius Caesar, and Augustus, originated with Octavian, also known as Augustus. In later years the title Augustus meant the supreme ruler of the Roman Empire, and the title Caesar meant heir to the throne.', :node_attributes=>{:menu_name => 'Roman Imperial', :title => 'Roman Imperial', :shortcut => 'Roman-Imperial', :displayed => true}  },
    { :title => 'Roman Republic', :description => 'Rome and its territories from about 280 to 41 BC.', :node_attributes=>{:menu_name => 'Roman Republic', :title => 'Roman Republic', :shortcut => 'Roman-Republic', :displayed => true}  }
  ])
ancient_categories.each do |category|
  ancient.node.children << category.node
end
foreign = Category.where(:title => 'Foreign').first
foreign_categories = Category.create([
    { :title => 'Afghanistan', :node_attributes=>{:menu_name => 'Afghanistan', :title => 'Afghanistan', :shortcut => 'Afghanistan', :displayed => true} },
    { :title => 'Argentina', :node_attributes=>{:menu_name => 'Argentina', :title => 'Argentina', :shortcut => 'Argentina', :displayed => true} },
    { :title => 'Australia', :node_attributes=>{:menu_name => 'Australia', :title => 'Australia', :shortcut => 'Australia', :displayed => true} },
    { :title => 'Austro-Hungarian Lands and Cities', :node_attributes=>{:menu_name => 'Austro-Hungarian Lands and Cities', :title => 'Austro-Hungarian Lands and Cities', :shortcut => 'Austro-Hungarian-Lands-and-Cities', :displayed => true} },
    { :title => 'Belgium', :node_attributes=>{:menu_name => 'Belgium', :title => 'Belgium', :shortcut => 'Belgium', :displayed => true} },
    { :title => 'Brazil', :node_attributes=>{:menu_name => 'Brazil', :title => 'Brazil', :shortcut => 'Brazil', :displayed => true} },
    { :title => 'Canada', :node_attributes=>{:menu_name => 'Canada', :title => 'Canada', :shortcut => 'Canada', :displayed => true} },
    { :title => 'China-Empire', :node_attributes=>{:menu_name => 'China-Empire', :title => 'China-Empire', :shortcut => 'China-Empire', :displayed => true} },
    { :title => 'Colombia', :node_attributes=>{:menu_name => 'Colombia', :title => 'Colombia', :shortcut => 'Colombia', :displayed => true} },
    { :title => 'Cuba', :node_attributes=>{:menu_name => 'Cuba', :title => 'Cuba', :shortcut => 'Cuba', :displayed => true} },
    { :title => 'Denmark', :node_attributes=>{:menu_name => 'Denmark', :title => 'Denmark', :shortcut => 'Denmark', :displayed => true} },
    { :title => 'Dominican Republic', :node_attributes=>{:menu_name => 'Dominican Republic', :title => 'Dominican Republic', :shortcut => 'Dominican-Republic', :displayed => true} },
    { :title => 'East Africa', :node_attributes=>{:menu_name => 'East Africa', :title => 'East Africa', :shortcut => 'East-Africa', :displayed => true} },
    { :title => 'Egypt', :node_attributes=>{:menu_name => 'Egypt', :title => 'Egypt', :shortcut => 'Egypt', :displayed => true} },
    { :title => 'Estonia', :node_attributes=>{:menu_name => 'Estonia', :title => 'Estonia', :shortcut => 'Estonia', :displayed => true} },
    { :title => 'France', :node_attributes=>{:menu_name => 'France', :title => 'France', :shortcut => 'France', :displayed => true} },
    { :title => 'French Indo-China', :node_attributes=>{:menu_name => 'French Indo-China', :title => 'French Indo-China', :shortcut => 'French-Indo-China', :displayed => true} },
    { :title => 'Germany', :node_attributes=>{:menu_name => 'Germany', :title => 'Germany', :shortcut => 'Germany', :displayed => true} },
    { :title => 'Great Britain', :node_attributes=>{:menu_name => 'Great Britain', :title => 'Great Britain', :shortcut => 'Great-Britain', :displayed => true} },
    { :title => 'Greece-Modern', :node_attributes=>{:menu_name => 'Greece-Modern', :title => 'Greece-Modern', :shortcut => 'Greece-Modern', :displayed => true} },
    { :title => 'Guatemala', :node_attributes=>{:menu_name => 'Guatemala', :title => 'Guatemala', :shortcut => 'Guatemala', :displayed => true} },
    { :title => 'Haiti', :description => 'An incredibly poor Caribbean nation with an incredibly rich history.', :node_attributes=>{:menu_name => 'Haiti', :title => 'Haiti', :shortcut => 'Haiti', :displayed => true} },
    { :title => 'Honduras', :node_attributes=>{:menu_name => 'Honduras', :title => 'Honduras', :shortcut => 'Honduras', :displayed => true} },
    { :title => 'Hungary', :node_attributes=>{:menu_name => 'Hungary', :title => 'Hungary', :shortcut => 'Hungary', :displayed => true} },
    { :title => 'India', :node_attributes=>{:menu_name => 'India', :title => 'India', :shortcut => 'India', :displayed => true} },
    { :title => 'Iran-Persia', :description => 'Many dynasties and kingdoms, and now an Islamic Republic have overlain, or included the area now known as modern Iran. Kingdoms previous to 1500s AD will be under Medieval or Ancient categories.', :node_attributes=>{:menu_name => 'Iran-Persia', :title => 'Iran-Persia', :shortcut => 'Iran-Persia', :displayed => true} },
    { :title => 'Ireland', :node_attributes=>{:menu_name => 'Ireland', :title => 'Ireland', :shortcut => 'Ireland', :displayed => true} },
    { :title => 'Israel', :node_attributes=>{:menu_name => 'Israel', :title => 'Israel', :shortcut => 'Israel', :displayed => true} },
    { :title => 'Italy', :node_attributes=>{:menu_name => 'Italy', :title => 'Italy', :shortcut => 'Italy', :displayed => true} },
    { :title => 'Japan', :node_attributes=>{:menu_name => 'Japan', :title => 'Japan', :shortcut => 'Japan', :displayed => true} },
    { :title => 'Liberia', :node_attributes=>{:menu_name => 'Liberia', :title => 'Liberia', :shortcut => 'Liberia', :displayed => true} },
    { :title => 'Malaya', :node_attributes=>{:menu_name => 'Malaya', :title => 'Malaya', :shortcut => 'Malaya', :displayed => true} },
    { :title => 'Mexico', :node_attributes=>{:menu_name => 'Mexico', :title => 'Mexico', :shortcut => 'Mexico', :displayed => true} },
    { :title => 'Netherlands', :node_attributes=>{:menu_name => 'Netherlands', :title => 'Netherlands', :shortcut => 'Netherlands', :displayed => true} },
    { :title => 'Norway', :node_attributes=>{:menu_name => 'Norway', :title => 'Norway', :shortcut => 'Norway', :displayed => true} },
    { :title => 'Ottoman Empire', :description => 'See also Egypt, etc for specific Ottoman local coinages.', :node_attributes=>{:menu_name => 'Ottoman Empire', :title => 'Ottoman Empire', :shortcut => 'Ottoman-Empire', :displayed => true} },
    { :title => 'Panama', :node_attributes=>{:menu_name => 'Panama', :title => 'Panama', :shortcut => 'Panama', :displayed => true} },
    { :title => 'Peru', :node_attributes=>{:menu_name => 'Peru', :title => 'Peru', :shortcut => 'Peru', :displayed => true} },
    { :title => 'Portugal and Colonies', :node_attributes=>{:menu_name => 'Portugal and Colonies', :title => 'Portugal and Colonies', :shortcut => 'Portugal-and-Colonies', :displayed => true} },
    { :title => 'Puerto Rico', :node_attributes=>{:menu_name => 'Puerto Rico', :title => 'Puerto Rico', :shortcut => 'Puerto-Rico', :displayed => true} },
    { :title => 'Romania', :node_attributes=>{:menu_name => 'Romania', :title => 'Romania', :shortcut => 'Romania', :displayed => true} },
    { :title => 'Russia', :node_attributes=>{:menu_name => 'Russia', :title => 'Russia', :shortcut => 'Russia', :displayed => true} },
    { :title => 'Sarawak', :node_attributes=>{:menu_name => 'Sarawak', :title => 'Sarawak', :shortcut => 'Sarawak', :displayed => true} },
    { :title => 'Saudi Arabia', :node_attributes=>{:menu_name => 'Saudi Arabia', :title => 'Saudi Arabia', :shortcut => 'Saudi-Arabia', :displayed => true} },
    { :title => 'South Africa', :node_attributes=>{:menu_name => 'South Africa', :title => 'South Africa', :shortcut => 'South-Africa', :displayed => true} },
    { :title => 'Spain, the Homeland', :description => 'Middle Ages to now. See also Spanish colonies in the New World, and Colonial Period USA coinages.', :node_attributes=>{:menu_name => 'Spain, the Homeland', :title => 'Spain, the Homeland', :shortcut => 'Spain-the-Homeland', :displayed => true} },
    { :title => 'Straits Settlements', :node_attributes=>{:menu_name => 'Straits Settlements', :title => 'Straits Settlements', :shortcut => 'Straits-Settlements', :displayed => true} },
    { :title => 'Sweden', :node_attributes=>{:menu_name => 'Sweden', :title => 'Sweden', :shortcut => 'Sweden', :displayed => true} },
    { :title => 'Switzerland', :node_attributes=>{:menu_name => 'Switzerland', :title => 'Switzerland', :shortcut => 'Switzerland', :displayed => true} }
  ])
foreign_categories.each do |category|
  foreign.node.children << category.node
end
medieval = Category.where(:title => 'Medieval').first
medieval_categories = Category.create([
    { :title => 'Medieval England', :node_attributes=>{:menu_name => 'Medieval England', :title => 'Medieval England', :shortcut => 'Medieval-England', :displayed => true} },
    { :title => 'Medieval Ireland', :node_attributes=>{:menu_name => 'Medieval Ireland', :title => 'Medieval Ireland', :shortcut => 'Medieval-Ireland', :displayed => true} },
    { :title => 'Medieval Scotland', :node_attributes=>{:menu_name => 'Medieval Scotland', :title => 'Medieval Scotland', :shortcut => 'Medieval-Scotland', :displayed => true} },
    { :title => 'Medieval Anglo-Gallic', :node_attributes=>{:menu_name => 'Medieval Anglo-Gallic', :title => 'Medieval Anglo-Gallic', :shortcut => 'Medieval-Anglo-Gallic', :displayed => true} }
  ])
medieval_categories.each do |category|
  medieval.node.children << category.node
end
usterri = Category.where(:title => 'U.S. Territorial Gold').first
usterri_categories = Category.create([
    { :title => 'California', :node_attributes=>{:menu_name => 'California', :title => 'California', :shortcut => 'California', :displayed => true} },
    { :title => 'Southern-North Carolina and Georgia', :node_attributes=>{:menu_name => 'Southern-North Carolina and Georgia', :title => 'Southern-North Carolina and Georgia', :shortcut => 'Southern-North-Carolina-and-Georgia', :displayed => true} }
  ])
usterri_categories.each do |category|
  usterri.node.children << category.node
end





# Third Tier
ancient_greek = Category.where(:title => 'Greek').first
ancient_greek_categories = Category.create([
    { :title => 'Alexander the Great and Family', :node_attributes=>{:menu_name => 'Alexander the Great and Family', :title => 'Alexander the Great and Family', :shortcut => 'Alexander-the-Great-and-Family', :displayed => true}  },
    { :title => 'Egypt of the Greek Ptolemies', :node_attributes=>{:menu_name => '', :title => '', :shortcut => '', :displayed => true}  }
  ])
ancient_greek_categories.each do |category|
  ancient_greek.node.children << category.node
end
foreign_aust_hung = Category.where(:title => 'Austro-Hungarian Lands and Cities').first
foreign_aust_hung_categories = Category.create([
    { :title => 'Salzburg', :node_attributes=>{:menu_name => 'Salzburg', :title => 'Salzburg', :shortcut => 'Salzburg', :displayed => true}  }
  ])
foreign_aust_hung_categories.each do |category|
  foreign_aust_hung.node.children << category.node
end
foreign_france = Category.where(:title => 'France').first
foreign_france_categories = Category.create([
    { :title => 'French Colonies', :node_attributes=>{:menu_name => 'French Colonies', :title => 'French Colonies', :shortcut => 'French-Colonies', :displayed => true}  }
  ])
foreign_france_categories.each do |category|
  foreign_france.node.children << category.node
end
foreign_germany = Category.where(:title => 'Germany').first
foreign_germany_categories = Category.create([
    { :title => 'Augsburg', :node_attributes=>{:menu_name => 'Augsburg', :title => 'Augsburg', :shortcut => 'Augsburg', :displayed => true}  },
    { :title => 'Bavaria', :node_attributes=>{:menu_name => 'Bavaria', :title => 'Bavaria', :shortcut => 'Bavaria', :displayed => true}  },
    { :title => 'Brandenburg-Bayreuth', :node_attributes=>{:menu_name => 'Brandenburg-Bayreuth', :title => 'Brandenburg-Bayreuth', :shortcut => 'Brandenburg-Bayreuth', :displayed => true}  },
    { :title => 'Bruns/Lune/Calen/Hann', :node_attributes=>{:menu_name => 'Bruns/Lune/Calen/Hann', :title => 'Bruns/Lune/Calen/Hann', :shortcut => 'Bruns-Lune-Calen-Hann', :displayed => true}  },
    { :title => 'Brunswick Wolfenbuttel', :node_attributes=>{:menu_name => 'Brunswick Wolfenbuttel', :title => 'Brunswick Wolfenbuttel', :shortcut => 'Brunswick-Wolfenbuttel', :displayed => true}  },
    { :title => 'Brunswick-Luneburg', :node_attributes=>{:menu_name => 'Brunswick-Luneburg', :title => 'Brunswick-Luneburg', :shortcut => 'Brunswick-Luneburg', :displayed => true}  },
    { :title => 'Frankfurt', :node_attributes=>{:menu_name => 'Frankfurt', :title => 'Frankfurt', :shortcut => 'Frankfurt', :displayed => true}  },
    { :title => 'Hamburg', :node_attributes=>{:menu_name => 'Hamburg', :title => 'Hamburg', :shortcut => 'Hamburg', :displayed => true}  },
    { :title => 'Hesse-Cassel', :node_attributes=>{:menu_name => 'Hesse-Cassel', :title => 'Hesse-Cassel', :shortcut => 'Hesse-Cassel', :displayed => true}  },
    { :title => 'Hesse-Homburg', :node_attributes=>{:menu_name => 'Hesse-Homburg', :title => 'Hesse-Homburg', :shortcut => 'Hesse-Homburg', :displayed => true}  },
    { :title => 'Jever', :node_attributes=>{:menu_name => 'Jever', :title => 'Jever', :shortcut => 'Jever', :displayed => true}  },
    { :title => 'Julich-Berg', :node_attributes=>{:menu_name => 'Julich-Berg', :title => 'Julich-Berg', :shortcut => 'Julich-Berg', :displayed => true}  },
    { :title => 'Montfort', :node_attributes=>{:menu_name => 'Montfort', :title => 'Montfort', :shortcut => 'Montfort', :displayed => true}  },
    { :title => 'Nurnberg', :node_attributes=>{:menu_name => 'Nurnberg', :title => 'Nurnberg', :shortcut => 'Nurnberg', :displayed => true}  },
    { :title => 'Prussia', :node_attributes=>{:menu_name => 'Prussia', :title => 'Prussia', :shortcut => 'Prussia', :displayed => true}  },
    { :title => 'Regensburg', :node_attributes=>{:menu_name => 'Regensburg', :title => 'Regensburg', :shortcut => 'Regensburg', :displayed => true}  },
    { :title => 'Saxe-Meiningen', :node_attributes=>{:menu_name => 'Saxe-Meiningen', :title => 'Saxe-Meiningen', :shortcut => 'Saxe-Meiningen', :displayed => true}  },
    { :title => 'Saxony', :node_attributes=>{:menu_name => 'Saxony', :title => 'Saxony', :shortcut => 'Saxony', :displayed => true}  },
    { :title => 'Westphalia', :node_attributes=>{:menu_name => 'Westphalia', :title => 'Westphalia', :shortcut => 'Westphalia', :displayed => true}  },
    { :title => 'Wurttemberg', :node_attributes=>{:menu_name => 'Wurttemberg', :title => 'Wurttemberg', :shortcut => 'Wurttemberg', :displayed => true}  }
  ])
foreign_germany_categories.each do |category|
  foreign_germany.node.children << category.node
end
foreign_italy = Category.where(:title => 'Italy').first
foreign_italy_categories = Category.create([
    { :title => 'Florence', :node_attributes=>{:menu_name => 'Florence', :title => 'Florence', :shortcut => 'Florence', :displayed => true}  },
    { :title => 'Fosdinovo', :node_attributes=>{:menu_name => 'Fosdinovo', :title => 'Fosdinovo', :shortcut => 'Fosdinovo', :displayed => true}  },
    { :title => 'Papal States', :node_attributes=>{:menu_name => 'Papal States', :title => 'Papal States', :shortcut => 'Papal-States', :displayed => true}  },
    { :title => 'Sardinia', :node_attributes=>{:menu_name => 'Sardinia', :title => 'Sardinia', :shortcut => 'Sardinia', :displayed => true}  },
    { :title => 'Venice', :node_attributes=>{:menu_name => 'Venice', :title => 'Venice', :shortcut => 'Venice', :displayed => true}  }
  ])
foreign_italy_categories.each do |category|
  foreign_italy.node.children << category.node
end
foreign_portugal_col = Category.where(:title => 'Portugal and Colonies').first
foreign_portugal_col_categories = Category.create([
    { :title => 'Angola', :node_attributes=>{:menu_name => 'Angola', :title => 'Angola', :shortcut => 'Angola', :displayed => true}  },
    { :title => 'Cape Verde Islands', :node_attributes=>{:menu_name => 'Cape Verde Islands', :title => 'Cape Verde Islands', :shortcut => 'Cape-Verde-Islands', :displayed => true}  },
    { :title => 'Macao', :node_attributes=>{:menu_name => 'Macao', :title => 'Macao', :shortcut => 'Macao', :displayed => true}  },
    { :title => 'Mozambique', :node_attributes=>{:menu_name => 'Mozambique', :title => 'Mozambique', :shortcut => 'Mozambique', :displayed => true}  },
    { :title => 'Portugal, the Homeland', :node_attributes=>{:menu_name => 'Portugal, the Homeland', :title => 'Portugal, the Homeland', :shortcut => 'Portugal-the-Homeland', :displayed => true}  },
    { :title => 'Portuguese Guinea', :node_attributes=>{:menu_name => 'Portuguese Guinea', :title => 'Portuguese Guinea', :shortcut => 'Portuguese-Guinea', :displayed => true}  },
    { :title => 'Portuguese India', :node_attributes=>{:menu_name => 'Portuguese India', :title => 'Portuguese India', :shortcut => 'Portuguese-India', :displayed => true}  },
    { :title => 'Saint Thomas and Prince Islands', :node_attributes=>{:menu_name => 'Saint Thomas and Prince Islands', :title => 'Saint Thomas and Prince Islands', :shortcut => 'Saint-Thomas-and-Prince-Islands', :displayed => true}  },
    { :title => 'Timor', :node_attributes=>{:menu_name => '', :title => '', :shortcut => '', :displayed => true}  }
  ])
foreign_portugal_col_categories.each do |category|
  foreign_portugal_col.node.children << category.node
end
foreign_strait = Category.where(:title => 'Straits Settlements').first
foreign_strait_categories = Category.create([
    { :title => 'East India Company', :node_attributes=>{:menu_name => 'East India Company', :title => 'East India Company', :shortcut => 'East-India-Company', :displayed => true}  }
  ])
foreign_strait_categories.each do |category|
  foreign_strait.node.children << category.node
end


