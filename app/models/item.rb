class Item < ActiveRecord::Base
  #  belongs_to :category
  has_many :product_images, :limit => 10, :dependent => :destroy
  has_one :main_image, :class_name => "ProductImage", :conditions => {:primary_image => true}
  accepts_nested_attributes_for :product_images, :allow_destroy => true, :reject_if => proc { |attributes| attributes['image'].blank? }

  # Associated Node attributes
  has_many :categories, :finder_sql =>
    'SELECT cats.* FROM categories AS cats
    JOIN nodes AS parent_n ON parent_n.page_id = cats.id AND parent_n.page_type = "Category"
    JOIN nodes AS item_n ON parent_n.id = item_n.parent_id 
    WHERE item_n.page_id = #{id} AND item_n.page_type = "Item"'
  has_many :nodes, :as => :page, :dependent => :destroy
  accepts_nested_attributes_for :nodes, :allow_destroy => true, :reject_if => proc { |attributes| attributes['parent_id'].blank? }
  before_validation :update_nodes

  def update_nodes
    count = 0
    self.nodes.each do |node|
      node.title =  self.name
      node.menu_name =  self.name
      node.shortcut = self.name.parameterize.html_safe + "-#{count}"
      node.displayed = self.display
      count += 1
    end
  end
  
  #  validates_associated :node
  validates_presence_of :item_id, :cost, :name
  validates_numericality_of :cost

  scope :get_for_sale, where(:for_sale => true)
  scope :displayed, where(:display => true)

  scope :scope_display, lambda {|display| where(:display => display)}
  scope :scope_for_sale, lambda {|for_sale| where(:for_sale => for_sale)}
  scope :scope_name, lambda {|name| where('name LIKE ?', name)}
  scope :scope_item_id, lambda {|item_id| where('item_id LIKE ?', item_id)}
  scope :scope_category, lambda {|title| joins(:nodes => {:parent => :category}) & where('categories.title LIKE ?', title)}
  scope :scope_min_price, lambda {|price| where('cost >= ?', price)}
  scope :scope_max_price, lambda {|price| where('cost <= ?', price)}  


    def thumbnail_image
      self.main_image ? self.main_image.thumbnail_image : 'no_image_thumb.gif'
    end

    def original_image
      self.main_image ? self.main_image.full_size_image : 'no_image_full_size.gif'
    end

    def short_details
      return self.details[0,30] << "..."
    end
  

    #  def default_node
    #    unless self.node
    #      self.create_node({
    #          :title => self.name,
    #          :menu_name => self.name,
    #          :displayed => true,
    #          :shortcut => self.name.parameterize.html_safe
    #        })
    #    else
    #      self.node.update_attributes(
    #        :name => self.name,
    #        :menu_name => self.name,
    #        :shortcut => self.name.parameterize.html_safe
    #      )
    #    end
    #  end
    #
    #  def update_node
    #    self.default_node
    #    self.node.save!
    #  end
  end
