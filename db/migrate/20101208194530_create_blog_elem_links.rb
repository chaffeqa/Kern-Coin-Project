class CreateBlogElemLinks < ActiveRecord::Migration
  def self.up
    create_table :blog_elem_links do |t|
      t.belongs_to :blog
      t.belongs_to :blog_elem
    end
  end

  def self.down
    drop_table :blog_elem_links
  end
end
