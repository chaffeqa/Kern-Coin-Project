class Blog < ActiveRecord::Base
  has_many :posts
  has_many :blog_elems
  
  # Associated Node attributes
  has_one :node, :as => :page
  accepts_nested_attributes_for :node
  
  validates_associated :node

  def update_node
    self.default_node
    self.node.parent = Node.blog_node if ( self.node and not self.node.parent )
    self.node.save!
  end

  def default_node
    unless self.node
      self.create_node({
          :title => self.title,
          :menu_name => self.title,
          :displayed => true,
          :shortcut => self.title.parameterize.html_safe 
        })
    else
      self.node.update_attributes(
        :title => self.title,
        :menu_name => self.title,
        :displayed => true,
        :shortcut => self.title.parameterize.html_safe 
      )
    end
  end
  
end
