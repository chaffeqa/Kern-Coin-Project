inventory = Category.create({:title => 'Inventory'})
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
