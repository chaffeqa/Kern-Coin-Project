class Node < ActiveRecord::Base
  belongs_to :node
  has_many :nodes, :dependent => :nullify
  has_one :template, :dependent => :destroy

  accepts_nested_attributes_for :template 
end
