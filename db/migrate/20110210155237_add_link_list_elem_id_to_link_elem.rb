class AddLinkListElemIdToLinkElem < ActiveRecord::Migration
  def self.up
    change_table :link_elems do |t|
      t.belongs_to :link_list_elem
    end
  end

  def self.down
    remove_column :link_elems, :link_list_elem_id
  end
end
