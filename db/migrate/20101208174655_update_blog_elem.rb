class UpdateBlogElem < ActiveRecord::Migration
  def self.up
    remove_column :blog_elems, :blog_id
    change_table :blogs do |t|
      t.belongs_to :blog_elem
    end
  end

  def self.down
    drop_table :blog_elem_links
    change_table :blog_elems do |t|
      t.belongs_to :blog
    end
  end
end
