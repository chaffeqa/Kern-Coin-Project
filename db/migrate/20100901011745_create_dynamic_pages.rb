class CreateDynamicPages < ActiveRecord::Migration
  def self.up
    create_table :dynamic_pages do |t|
      t.string :template_name

      t.timestamps
    end
  end

  def self.down
    drop_table :dynamic_pages
  end
end
