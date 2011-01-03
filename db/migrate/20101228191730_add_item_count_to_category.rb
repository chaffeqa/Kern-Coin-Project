class AddItemCountToCategory < ActiveRecord::Migration
  def self.up
    add_column :categories, :item_count, :integer, :default => 0
  end

  def self.down
    remove_column :categories, :item_count
  end
end
