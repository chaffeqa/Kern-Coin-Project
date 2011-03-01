class Blog < ActiveRecord::Base

  ####################################################################
  # Associations
  ###########
  has_many :posts
  belongs_to :blog_elem
  has_many :blog_elem_links, :dependent => :destroy
  has_many :blog_elems, :through => :blog_elem_links


  ####################################################################
  # Validations and Callbacks
  ###########

  # Associated Node attributes
  has_one :node, :as => :page, :dependent => :destroy, :validate => true
  accepts_nested_attributes_for :node
  before_save :update_node





  ####################################################################
  # Helpers
  ###########

  # Allows overriding of the self.node lookup
  alias_method :original_node, :node


  # Updates this Object's Node, setting all the attributes correctly and creating the node if need be
  def update_node
    this_node = self.original_node || self.build_node
    self.title = this_node.title.blank? ? self.title : this_node.title
    this_node.title = self.title
    this_node.menu_name = self.title
    this_node.shortcut = self.title.parameterize.html_safe
    this_node.displayed = true
  end

  # Overrides regular accessor to prevent errors if self.node doesn't exists
  def node
    unless self.original_node
      self.save # Triggers callback of update_node
    end
    self.original_node
  end


end

