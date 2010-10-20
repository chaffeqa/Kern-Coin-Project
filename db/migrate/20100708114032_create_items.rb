class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.decimal :cost, :precision => 8, :scale => 2, :default => 0
      t.text :details
      t.string :item_id
      t.boolean :for_sale
      t.boolean :display

      t.timestamps
    end
  end

  

  def self.down
    drop_table :items
  end
end
