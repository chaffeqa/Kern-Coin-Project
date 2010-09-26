class CreateNodes < ActiveRecord::Migration
  def self.up
    create_table :nodes do |t|
      t.string :title
      t.string :menu_name
      t.string :shortcut
      t.belongs_to :node
      t.boolean :displayed
      t.references :page, :polymorphic => true
      t.string :controller
      t.string :action


      t.timestamps
    end
  end

  def self.down
    drop_table :nodes
  end
end
