home_page = Template.create(:template_name => 'Home')
home_node = home_page.create_node(:menu_name => 'Home', :title => 'Home', :shortcut => 'home', :displayed => true)


Ckeditor.image_model.create!([
    {:data_file_name => 'view-store.png', :data_content_type => 'image/png', :data_file_size => 9414, :type => 'Ckeditor::Picture', :locale => 0},
    {:data_file_name => 'view-auctions.png', :data_content_type => 'image/png', :data_file_size => 9609, :type => 'Ckeditor::Picture', :locale => 0},
    {:data_file_name => 'view-offers.png', :data_content_type => 'image/png', :data_file_size => 3946, :type => 'Ckeditor::Picture', :locale => 0},
    {:data_file_name => 'learn-more.png', :data_content_type => 'image/png', :data_file_size => 7729, :type => 'Ckeditor::Picture', :locale => 0},
    {:data_file_name => 'view-archive.png', :data_content_type => 'image/png', :data_file_size => 8415, :type => 'Ckeditor::Picture', :locale => 0}
  ])

buy_element = home_page.elements.create(:position => 2, :column_order => 1, :title => 'Buy', :display_title => true)
buy_element.elem = TextElem.create(:text => '<p>
      We offer an inventory that is second-to-none featuring ancient,
      foreign, medieval, US and numerous other types of coins. Visit
      our online store, view our inventory, and purchase coins!
    </p>')
buy_element.save!
buy_link_element = home_page.elements.create(:position => 2, :column_order => 2, :title => 'Buy', :display_title => false)
buy_link_element.elem = LinkElem.create(:link_name => 'Buy', :link_type => 'Page', :node_id => 6, :is_image => true, :img_src => 'view-store.png', :image_style => '', :target => '')
buy_link_element.save!

bid_element = home_page.elements.create(:position => 3, :column_order => 1, :title => 'Bid', :display_title => true)
bid_element.elem = TextElem.create(:text => '<p>
      Our website features a 100% exclusive auction
      that allows our loyal customers to bid on rare,
      unique and valuable coins!
    </p>')
bid_element.save!
bid_link_element = home_page.elements.create(:position => 3, :column_order => 2, :title => 'Bid', :display_title => false)
bid_link_element.elem = LinkElem.create(:link_name => 'Bid', :link_type => 'Page', :node_id => 1, :is_image => true, :img_src => 'view-auctions.png', :image_style => '', :target => '')
bid_link_element.save!

special_offers_element = home_page.elements.create(:position => 4, :column_order => 1, :title => 'Special Offers', :display_title => false)
special_offers_element.elem = TextElem.create(:text => '
    <img alt="Special Offers" src="images/special-offers.png" style="padding: 6px 6px 15px;">
    <p>
      Please take a moment to view our current special offers on coins of all sorts!
    </p>')
special_offers_element.save!
special_offers_link_element = home_page.elements.create(:position => 4, :column_order => 2, :title => 'Special Offers', :display_title => false)
special_offers_link_element.elem = LinkElem.create(:link_name => 'Special Offers', :link_type => 'Page', :node_id => 7, :is_image => true, :img_src => 'view-offers.png', :image_style => 'margin: 30px -4px 0pt;', :target => '')
special_offers_link_element.save!

welcome_element = home_page.elements.create(:position => 5, :column_order => 1, :title => 'Welcome', :display_title => true)
welcome_element.elem = TextElem.create(:text => '<p>
      Since 1971 Jonathan Kern has been a knowledgeable dealer and
      collector in ancient, foreign, and U.S. coinage along with tokens, paper
      money and antiquities.
    </p>
    <p>
      We take great pride in putting the customer first. Please take a look at
      our current inventory listing or drop us a line so we may help you with
      your numismatic need.
    </p>')
welcome_element.save!
welcome_link_element = home_page.elements.create(:position => 5, :column_order => 2, :title => 'Welcome', :display_title => false)
welcome_link_element.elem = LinkElem.create(:link_name => 'Welcome', :link_type => 'Page', :node_id => 126, :is_image => true, :img_src => 'learn-more.png', :image_style => 'float: right; margin-top: 8px;', :target => '')
welcome_link_element.save!







inventory = Category.create!({:title => 'Inventory'})
home_node.nodes << inventory.node
inventory.children.create([
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



# Second Tier
ancient = Category.where(:title => 'Ancient').first
ancient.children.create([
    { :title => 'Biblical' },
    { :title => 'Byzantine' },
    { :title => 'Greek', :description => 'Amazing Numismatic Artwork' },
    { :title => 'Jewish Coinage', :description => 'Generally these coins will be dated in the 1500s to the current date.' },
    { :title => 'Parthia' },
    { :title => 'Roman Imperatoral', :description => 'From the deterioration of the Republic to the battle of Actium.' },
    { :title => 'Roman Imperial', :description => 'Commonly encountered titles include Caesar, originated with Julius Caesar, and Augustus, originated with Octavian, also known as Augustus. In later years the title Augustus meant the supreme ruler of the Roman Empire, and the title Caesar meant heir to the throne.' },
    { :title => 'Roman Republic', :description => 'Rome and its territories from about 280 to 41 BC.' }
  ])
foreign = Category.where(:title => 'Foreign').first
foreign.children.create([
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
medieval = Category.where(:title => 'Medieval').first
medieval.children.create([
    { :title => 'England' },
    { :title => 'Ireland' },
    { :title => 'Scotland' },
    { :title => 'Anglo-Gallic' }
  ])
usterri = Category.where(:title => 'U.S. Territorial Gold').first
usterri.children.create([
    { :title => 'California' },
    { :title => 'Southern-North Carolina and Georgia' }
  ])





# Third Tier
ancient_greek = Category.where(:title => 'Greek').first
ancient_greek.children.create([
    { :title => 'Alexander the Great and Family' },
    { :title => 'Egypt of the Greek Ptolemies' }
  ])
foreign_aust_hung = Category.where(:title => 'Austro-Hungarian Lands and Cities').first
foreign_aust_hung.children.create([
    { :title => 'Salzburg ' }
  ])
foreign_france = Category.where(:title => 'France').first
foreign_france.children.create([
    { :title => 'French Colonies ' }
  ])
foreign_germany = Category.where(:title => 'Germany').first
foreign_germany.children.create([
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
foreign_italy = Category.where(:title => 'Italy').first
foreign_italy.children.create([
    { :title => 'Florence' },
    { :title => 'Fosdinovo' },
    { :title => 'Papal States' },
    { :title => 'Sardinia' },
    { :title => 'Venice' }
  ])
foreign_portugal_col = Category.where(:title => 'Portugal and Colonies').first
foreign_portugal_col.children.create([
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
foreign_strait = Category.where(:title => 'Straits Settlements').first
foreign_strait.children.create([
    { :title => 'East India Company' }
  ])



# Items
ancient.items.create([
    {:name => 'Bookmark', :cost => '12.52', :details => 'Just a bookmark. I am serious.', :item_id => '123154123', :for_sale => true, :display => true},
    {:name => 'Glasses', :cost => '25.99', :details => 'Just a Glasses. I am serious.', :item_id => 'd12312311e1', :for_sale => true, :display => true},
    {:name => 'Coin Display Case', :cost => '51.00', :details => 'This is by far the coolest way to display your collection. Please use it wisely.', :item_id => '1e3121rt1rt12', :for_sale => true, :display => true},
    {:name => 'Pen', :cost => '2.11', :details => 'Just a Pen. I am serious.', :item_id => '12315421323123', :for_sale => true, :display => true}
  ])



home_node.nodes.create([
    {:menu_name => 'Auction', :title => 'Auction', :shortcut => 'auction', :displayed => true, :controller => 'auctions', :action => 'index'},
    {:menu_name => 'Archives', :title => 'Archives', :shortcut => 'archives', :displayed => true, :controller => 'archives', :action => 'index'},
    {:menu_name => 'Contact Us', :title => 'Contact Us', :shortcut => 'contact-us', :displayed => true, :controller => 'questions', :action => 'new'}
  ])

about_us_page = Template.create(:template_name => 'Right Inside')
about_us_node = home_node.nodes.create(:menu_name => 'About Us', :title => 'About Us', :shortcut => 'about_us', :displayed => true)
about_us_page.node = about_us_node
about_us_page.save!
about_us_element = about_us_page.elements.create(:position => 1, :column_order => 1, :title => 'About Kern Coin', :display_title => true)
about_us_element.elem = TextElem.create(:text => '<p>
      Lorem ipsum dolor sit amet, emphasis consectetuer adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus.
      Nunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl.
      Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Maecenas ornare tortor.
      Donec sed tellus eget sapien fringilla nonummy. Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc.
      Morbi imperdiet augue quis tellus.
    </p>')
about_us_element.save!

#admin_node = home_node.nodes.create(:menu_name => 'Admin', :title => 'Admin', :shortcut => 'admin', :displayed => true, :controller => 'admin/home', :action => 'index')
admin_node = Node.create(:menu_name => 'Admin', :title => 'Admin', :shortcut => 'admin', :displayed => true, :controller => 'admin/home', :action => 'index')
site_page_admin_node = admin_node.nodes.create(:menu_name => 'Site Page Admin', :title => 'Site Page Admin', :displayed => true, :controller => 'admin/nodes')
categories_admin_node = admin_node.nodes.create(:menu_name => 'Inventory Categories Admin', :title => 'Inventory Categories Admin', :displayed => true, :controller => 'admin/categories')
items_admin_node = admin_node.nodes.create(:menu_name => 'Inventory Items Admin', :title => 'Inventory Items Admin', :displayed => true, :controller => 'admin/items')
#site_images_admin_node = admin_node.nodes.create(:menu_name => 'Site Images Admin', :title => 'Site Images Admin', :displayed => true, :controller => 'admin/site_assets')
questions_admin_node = admin_node.nodes.create(:menu_name => 'Questions Admin', :title => 'Questions Admin', :displayed => true, :controller => 'admin/questions')
#blog_admin_node = admin_node.nodes.create(:menu_name => 'News Article Admin', :title => 'News Article Admin', :displayed => true, :controller => 'admin/posts')

site_page_admin_node.nodes.create(:menu_name => 'New Page', :title => 'New Page', :displayed => true, :controller => 'admin/nodes', :action => 'new')
categories_admin_node.nodes.create(:menu_name => 'New Category', :title => 'New Category', :displayed => true, :controller => 'admin/categories', :action => 'new')
items_admin_node.nodes.create(:menu_name => 'New Item', :title => 'New Item', :displayed => true, :controller => 'admin/items', :action => 'new')