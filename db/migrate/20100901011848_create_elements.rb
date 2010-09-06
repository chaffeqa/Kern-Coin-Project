class CreateElements < ActiveRecord::Migration
  def self.up
    create_table :elements do |t|
      t.belongs_to :template
      t.integer :position
      t.references :elem, :polymorphic => true
      t.integer :column_order

      t.timestamps
    end
  end

  def self.down
    drop_table :elements
  end
end
