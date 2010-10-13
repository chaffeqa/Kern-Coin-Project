class Post < ActiveRecord::Base
  belongs_to :blog

  # Associated Node attributes
  has_one :node, :as => :page
  accepts_nested_attributes_for :node
  after_save :update_node

  def update_node
    unless self.node
      self.create_node(
        :title => self.title,
        :menu_name => self.title,
        :shortcut => self.title.downcase.parameterize.html_safe,
        :displayed => true
      )
    else
      self.node.update_attributes(
        :title => self.title,
        :menu_name => self.title,
        :shortcut => self.title.downcase.parameterize.html_safe
      )
    end
    self.node.parent = self.blog.node if ( self.blog and not self.node.parent )
    self.node.save!
  end
end
