class AddItemCountToCategory < ActiveRecord::Migration
  def self.up
    add_column :categories, :item_count, :integer, :default => 0
    # NOTE: need to seed before calling this method
#    Category.full_item_counts_update
  end

  def self.down
    remove_column :categories, :item_count
  end
end

