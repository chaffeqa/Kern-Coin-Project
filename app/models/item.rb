class Item < ActiveRecord::Base
  belongs_to :category
  has_many :product_images, :limit => 10
  has_one :main_image, :class_name => "ProductImage", :conditions => {:primary_image => true}
  accepts_nested_attributes_for :product_images, :allow_destroy => true, :reject_if => proc { |attributes| attributes['image'].blank? }

  # Associated Node attributes
  has_one :node, :as => :page
  accepts_nested_attributes_for :node
  after_save :update_node_relationships


  validates_presence_of :name, :item_id, :cost
  validates_numericality_of :cost

  scope :get_for_sale, where(:for_sale => true)
  scope :displayed, where(:display => true)

 

  def short_details
    return self.details[0,30] << "..."
  end

  def create_default_node
    unless self.node
      self.create_node({
          :title => self.name,
          :menu_name => self.name,
          :displayed => true,
          :controller => 'inventory',
          :action => 'item'
        })
    end
  end

  def update_node_relationships
    self.create_default_node
    self.category ? self.node.node = self.category.node : self.node.node = nil
    self.node.save!
  end
end
