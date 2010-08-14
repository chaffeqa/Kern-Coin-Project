class CreateProductImages < ActiveRecord::Migration
  def self.up
    create_table :product_images do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.belongs_to :item
      t.boolean :primary_image, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :product_images
  end
end
