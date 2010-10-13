home_page = DynamicPage.create(:template_name => 'Home')
home_node = home_page.create_node(:menu_name => 'Home', :title => 'Home', :shortcut => 'home', :displayed => true)


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








inventory = Category.create!({:title => 'Inventory'})
home_node.children << inventory.node
inventory_categories = Category.create([
    { :title => 'Special Offers' },
    { :title => 'Ancient' },
    { :title => 'Errors' },
    { :title => 'Foreign', :description => 'Generally these coins will be dated in the 1500s to the current date.' },
    { :title => 'Gold Bullion' },
    { :title => 'Jewelry Coins' },
    { :title => 'Medieval' },
    { :title => 'Shipreck Coins and Artifacts' },
    { :title => 'Silver Bullion' },
    { :title => 'U.S. Coinage' },
    { :title => 'U.S. Proof and Mint Sets' },
    { :title => 'U.S. Territorial Gold' },
    { :title => 'U.S. Tokens' },
    { :title => 'U.S. Treasures' },
    { :title => 'U.S. Medals and Awards' }
  ])
inventory_categories.each do |category| 
  inventory.node.children << category.node
end



# Second Tier
ancient = Category.where(:title => 'Ancient').first
ancient_categories = Category.create([
    { :title => 'Biblical' },
    { :title => 'Byzantine' },
    { :title => 'Greek', :description => 'Amazing Numismatic Artwork' },
    { :title => 'Jewish Coinage', :description => 'Generally these coins will be dated in the 1500s to the current date.' },
    { :title => 'Parthia' },
    { :title => 'Roman Imperatoral', :description => 'From the deterioration of the Republic to the battle of Actium.' },
    { :title => 'Roman Imperial', :description => 'Commonly encountered titles include Caesar, originated with Julius Caesar, and Augustus, originated with Octavian, also known as Augustus. In later years the title Augustus meant the supreme ruler of the Roman Empire, and the title Caesar meant heir to the throne.' },
    { :title => 'Roman Republic', :description => 'Rome and its territories from about 280 to 41 BC.' }
  ])
ancient_categories.each do |category|
  ancient.node.children << category.node
end
foreign = Category.where(:title => 'Foreign').first
foreign_categories = Category.create([
    { :title => 'Afghanistan' },
    { :title => 'Argentina' },
    { :title => 'Australia' },
    { :title => 'Austro-Hungarian Lands and Cities' },
    { :title => 'Belgium' },
    { :title => 'Brazil' },
    { :title => 'Canada' },
    { :title => 'China-Empire' },
    { :title => 'Colombia' },
    { :title => 'Cuba' },
    { :title => 'Denmark' },
    { :title => 'Dominican Republic' },
    { :title => 'East Africa' },
    { :title => 'Egypt' },
    { :title => 'Estonia' },
    { :title => 'France' },
    { :title => 'French Indo-China' },
    { :title => 'Germany' },
    { :title => 'Great Britain' },
    { :title => 'Greece-Modern' },
    { :title => 'Guatemala' },
    { :title => 'Haiti', :description => 'An incredibly poor Caribbean nation with an incredibly rich history.' },
    { :title => 'Honduras' },
    { :title => 'Hungary' },
    { :title => 'India' },
    { :title => 'Iran-Persia', :description => 'Many dynasties and kingdoms, and now an Islamic Republic have overlain, or included the area now known as modern Iran. Kingdoms previous to 1500s AD will be under Medieval or Ancient categories.' },
    { :title => 'Ireland' },
    { :title => 'Israel' },
    { :title => 'Italy' },
    { :title => 'Japan' },
    { :title => 'Liberia' },
    { :title => 'Malaya' },
    { :title => 'Mexico' },
    { :title => 'Netherlands' },
    { :title => 'Norway' },
    { :title => 'Ottoman Empire', :description => 'See also Egypt, etc for specific Ottoman local coinages.' },
    { :title => 'Panama' },
    { :title => 'Peru' },
    { :title => 'Portugal and Colonies' },
    { :title => 'Puerto Rico' },
    { :title => 'Romania' },
    { :title => 'Russia' },
    { :title => 'Sarawak' },
    { :title => 'Saudi Arabia' },
    { :title => 'South Africa' },
    { :title => 'Spain, the Homeland', :description => 'Middle Ages to now. See also Spanish colonies in the New World, and Colonial Period USA coinages.' },
    { :title => 'Straits Settlements' },
    { :title => 'Sweden' },
    { :title => 'Switzerland' }
  ])
foreign_categories.each do |category|
  foreign.node.children << category.node
end
medieval = Category.where(:title => 'Medieval').first
medieval_categories = Category.create([
    { :title => 'Medieval England' },
    { :title => 'Medieval Ireland' },
    { :title => 'Medieval Scotland' },
    { :title => 'Medieval Anglo-Gallic' }
  ])
medieval_categories.each do |category|
  medieval.node.children << category.node
end
usterri = Category.where(:title => 'U.S. Territorial Gold').first
usterri_categories = Category.create([
    { :title => 'California' },
    { :title => 'Southern-North Carolina and Georgia' }
  ])
usterri_categories.each do |category|
  usterri.node.children << category.node
end





# Third Tier
ancient_greek = Category.where(:title => 'Greek').first
ancient_greek_categories = Category.create([
    { :title => 'Alexander the Great and Family' },
    { :title => 'Egypt of the Greek Ptolemies' }
  ])
ancient_greek_categories.each do |category|
  ancient_greek.node.children << category.node
end
foreign_aust_hung = Category.where(:title => 'Austro-Hungarian Lands and Cities').first
foreign_aust_hung_categories = Category.create([
    { :title => 'Salzburg ' }
  ])
foreign_aust_hung_categories.each do |category|
  foreign_aust_hung.node.children << category.node
end
foreign_france = Category.where(:title => 'France').first
foreign_france_categories = Category.create([
    { :title => 'French Colonies ' }
  ])
foreign_france_categories.each do |category|
  foreign_france.node.children << category.node
end
foreign_germany = Category.where(:title => 'Germany').first
foreign_germany_categories = Category.create([
    { :title => 'Augsburg' },
    { :title => 'Bavaria' },
    { :title => 'Brandenburg-Bayreuth' },
    { :title => 'Bruns/Lune/Calen/Hann' },
    { :title => 'Brunswick Wolfenbuttel' },
    { :title => 'Brunswick-Luneburg' },
    { :title => 'Frankfurt' },
    { :title => 'Hamburg' },
    { :title => 'Hesse-Cassel' },
    { :title => 'Hesse-Homburg' },
    { :title => 'Jever' },
    { :title => 'Julich-Berg' },
    { :title => 'Montfort' },
    { :title => 'Nurnberg' },
    { :title => 'Prussia' },
    { :title => 'Regensburg' },
    { :title => 'Saxe-Meiningen' },
    { :title => 'Saxony' },
    { :title => 'Westphalia' },
    { :title => 'Wurttemberg' }
  ])
foreign_germany_categories.each do |category|
  foreign_germany.node.children << category.node
end
foreign_italy = Category.where(:title => 'Italy').first
foreign_italy_categories = Category.create([
    { :title => 'Florence' },
    { :title => 'Fosdinovo' },
    { :title => 'Papal States' },
    { :title => 'Sardinia' },
    { :title => 'Venice' }
  ])
foreign_italy_categories.each do |category|
  foreign_italy.node.children << category.node
end
foreign_portugal_col = Category.where(:title => 'Portugal and Colonies').first
foreign_portugal_col_categories = Category.create([
    { :title => 'Angola' },
    { :title => 'Cape Verde Islands' },
    { :title => 'Macao' },
    { :title => 'Mozambique' },
    { :title => 'Portugal, the Homeland' },
    { :title => 'Portuguese Guinea' },
    { :title => 'Portuguese India' },
    { :title => 'Saint Thomas and Prince Islands' },
    { :title => 'Timor' }
  ])
foreign_portugal_col_categories.each do |category|
  foreign_portugal_col.node.children << category.node
end
foreign_strait = Category.where(:title => 'Straits Settlements').first
foreign_strait_categories = Category.create([
    { :title => 'East India Company' }
  ])
foreign_strait_categories.each do |category|
  foreign_strait.node.children << category.node
end


# Items
special_offers = Category.where(:title => 'Special Offers').first
specia_offers_items = Item.create([
    {:name => 'Bookmark', :cost => '12.52', :details => 'Just a bookmark. I am serious.', :item_id => '123154123', :for_sale => true, :display => true},
    {:name => 'Glasses', :cost => '25.99', :details => 'Just a Glasses. I am serious.', :item_id => 'd12312311e1', :for_sale => true, :display => true}
  ])
specia_offers_items.each do |category|
  special_offers.node.children << category.node
end
ancient_biblical = Category.where(:title => 'Biblical').first
ancient_biblical_items = Item.create([
    {:name => 'Coin Display Case', :cost => '51.00', :details => 'This is by far the coolest way to display your collection. Please use it wisely.', :item_id => '1e3121rt1rt12', :for_sale => true, :display => true},
    {:name => 'Pen', :cost => '2.11', :details => 'Just a Pen. I am serious.', :item_id => '12315421323123', :for_sale => true, :display => true}
  ])
ancient_biblical_items.each do |category|
  ancient_biblical.node.children << category.node
end


auction_page = DynamicPage.create(:template_name => 'Inside')
auction_node = home_node.children.create(:menu_name => 'Auctions', :title => 'Auctions', :shortcut => 'auctions', :displayed => true)
auction_page.node = auction_node
auction_page.save!


archives_page = DynamicPage.create(:template_name => 'Inside')
archives_node = home_node.children.create(:menu_name => 'Archives', :title => 'Archives', :shortcut => 'archives', :displayed => true)
archives_page.node = archives_node
archives_page.save!

home_node.children.create(:menu_name => 'Contact Us', :title => 'Contact Us', :shortcut => 'contact-us', :displayed => true, :controller => 'questions', :action => 'new')
about_us_page = DynamicPage.create(:template_name => 'Inside')
about_us_node = home_node.children.create(:menu_name => 'About Us', :title => 'About Us', :shortcut => 'about_us', :displayed => true)
about_us_page.node = about_us_node
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


blogs_node = home_node.children.create(:menu_name => 'Blogs', :title => 'Blogs', :shortcut => 'blogs', :displayed => false)
news_page = Blog.create!(:banner => 'News Archive')
news_node = news_page.create_node(:menu_name => 'News Archive', :title => 'News Archive', :shortcut => 'news-archive', :displayed => true)
blogs_node.children << news_node
news_node.save!

recent_news_element = home_page.elements.create(:page_area => 6, :title => 'Recent News', :display_title => true)
recent_news_element.elem = news_page.blog_elems.create!(:count_limit => 5, :display_type => 'Archive')
recent_news_element.save!
recent_news_link_element = home_page.elements.create(:page_area => 6,  :title => 'Recent News Archive', :display_title => false)
recent_news_link_element.elem = TextElem.create(:text => '<a href="/archives"><img style="float: right; margin-top: 19px;" src="/site_assets/images/5/content_view-archive.png" alt="View News Archive" /></a>')
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