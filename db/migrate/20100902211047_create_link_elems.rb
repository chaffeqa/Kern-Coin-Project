class CreateLinkElems < ActiveRecord::Migration
  def self.up
    create_table :link_elems do |t|
      t.string :link_name
      t.string :link_type
      t.string :link_url
      t.belongs_to :node
      t.string :target
      t.belongs_to :image
      t.string :image_style

      t.timestamps
    end
  end

  def self.down
    drop_table :link_elems
  end
end
