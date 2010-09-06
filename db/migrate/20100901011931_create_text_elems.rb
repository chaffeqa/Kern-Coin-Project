class CreateTextElems < ActiveRecord::Migration
  def self.up
    create_table :text_elems do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :text_elems
  end
end
