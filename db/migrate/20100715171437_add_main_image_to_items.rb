class AddMainImageToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :main_image_file_name, :string
    add_column :items, :main_image_content_type, :string
    add_column :items, :main_image_file_size, :integer
    add_column :items, :main_image_updated_at, :datetime
  end

  def self.down
    remove_column :items, :main_image_updated_at
    remove_column :items, :main_image_file_size
    remove_column :items, :main_image_content_type
    remove_column :items, :main_image_file_name
  end
end
