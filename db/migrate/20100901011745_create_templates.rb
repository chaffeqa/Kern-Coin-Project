class CreateTemplates < ActiveRecord::Migration
  def self.up
    create_table :templates do |t|
      t.string :template_name
      t.belongs_to :node

      t.timestamps
    end
  end

  def self.down
    drop_table :templates
  end
end
