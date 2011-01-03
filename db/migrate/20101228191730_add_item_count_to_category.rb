class AddItemCountToCategory < ActiveRecord::Migration
  def self.up
    add_column :categories, :item_count, :integer, :default => 0
    Category.item_count_full_check
  end

  def self.down
    remove_column :categories, :item_count
  end
end
