class CreateLinkListElems < ActiveRecord::Migration
  def self.up
    create_table :link_list_elems do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :link_list_elems
  end
end
