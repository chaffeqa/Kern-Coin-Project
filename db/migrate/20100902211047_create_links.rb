class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string :link_name
      t.string :link_type
      t.string :link_url
      t.belongs_to :node
      t.string :target
      t.belongs_to :link_list_elem
      t.string :link_file_file_name
      t.string :link_file_content_type
      t.integer :link_file_file_size
      t.datetime :link_file_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
