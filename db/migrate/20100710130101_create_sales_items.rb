class CreateSalesItems < ActiveRecord::Migration
  def self.up
    create_table :sales_items do |t|
      t.belongs_to :sale
      t.belongs_to :item
      t.integer :quantity
      t.decimal :total, :precision => 8, :scale => 2, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :sales_items
  end
end
