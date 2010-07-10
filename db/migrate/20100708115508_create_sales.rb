class CreateSales < ActiveRecord::Migration
  def self.up
    create_table :sales do |t|
      t.decimal :total, :precision => 8, :scale => 2, :default => 0
      t.string :fulfillment
      t.belongs_to :user

      t.timestamps
    end
  end

  def self.down
    drop_table :sales
  end
end
