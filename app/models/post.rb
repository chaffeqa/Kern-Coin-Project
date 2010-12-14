class Post < ActiveRecord::Base
  belongs_to :blog

  # Associated Node attributes
  has_one :node, :as => :page, :dependent => :destroy
  accepts_nested_attributes_for :node

  #  validates_associated :node
  before_validation :update_node

  def update_node
    self.node.title = self.node.title.nil? || self.node.title.empty? ? self.title : self.node.title
    self.node.menu_name = self.node.menu_name.nil? || self.node.menu_name.empty? ? self.title : self.node.menu_name
    self.node.shortcut = self.node.shortcut.nil? || self.node.shortcut.empty? ? self.title.parameterize.html_safe : self.node.shortcut
  end

  def post_date
    temp = super
    temp.blank? ? created_at : temp
  end

end
