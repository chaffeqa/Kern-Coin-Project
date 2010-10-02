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
        :shortcut => self.title.downcase.tableize,
        :displayed => true
      )
    else
      self.node.update_attributes(
        :title => self.title,
        :menu_name => self.title,
        :shortcut => self.title.downcase.parameterize.html_safe
      )
    end
    self.blog ? self.node.node = self.blog.node : self.node.node = nil
    self.node.save!
  end
end
