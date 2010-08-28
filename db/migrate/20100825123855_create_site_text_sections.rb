class CreateSiteTextSections < ActiveRecord::Migration
  def self.up
    create_table :site_text_sections do |t|
      t.string :section_name
      t.string :title
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :site_text_sections
  end
end
