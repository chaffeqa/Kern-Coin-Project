class AddPostDateToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.datetime :post_date
    end
  end

  def self.down
    remove_column :posts, :post_date
  end
end
