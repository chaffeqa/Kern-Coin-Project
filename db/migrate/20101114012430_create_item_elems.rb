class CreateItemElems < ActiveRecord::Migration
  def self.up
    create_table :item_elems do |t|
      t.belongs_to :item
      t.string :display_type

      t.timestamps
    end
  end

  def self.down
    drop_table :item_elems
  end
end
