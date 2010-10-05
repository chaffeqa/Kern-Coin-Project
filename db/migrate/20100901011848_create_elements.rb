class CreateElements < ActiveRecord::Migration
  def self.up
    create_table :elements do |t|
      t.belongs_to :dynamic_page
      t.integer :position
      t.references :elem, :polymorphic => true
      t.integer :column_order
      t.string :title
      t.boolean :display_title, :default => true
      t.string :html_id

      t.timestamps
    end
  end

  def self.down
    drop_table :elements
  end
end
