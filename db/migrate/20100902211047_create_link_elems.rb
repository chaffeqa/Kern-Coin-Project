class CreateLinkElems < ActiveRecord::Migration
  def self.up
    create_table :link_elems do |t|
      t.string :link_name
      t.string :link_type
      t.string :link_url
      t.belongs_to :node
      t.string :target
      t.belongs_to :image
      t.string :img_src
      t.boolean :is_image
      t.string :image_style
      t.string :link_file_file_name
      t.string :link_file_content_type
      t.integer :link_file_file_size

      t.timestamps
    end
  end

  def self.down
    drop_table :link_elems
  end
end
