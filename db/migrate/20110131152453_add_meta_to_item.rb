class AddMetaToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :meta, :string
  end

  def self.down
    remove_column :items, :meta
  end
end
