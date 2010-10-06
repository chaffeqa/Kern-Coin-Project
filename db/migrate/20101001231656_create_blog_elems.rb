class CreateBlogElems < ActiveRecord::Migration
  def self.up
    create_table :blog_elems do |t|
      t.belongs_to :blog
      t.integer :count_limit
      t.date :past_limit
      t.string :display_type

      t.timestamps
    end
  end

  def self.down
    drop_table :blog_elems
  end
end
