class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :country
      t.string :zip_code
      t.string :phone
      t.string :fax
      t.string :email
      t.string :website
      t.string :subject
      t.text :body
      t.belongs_to :user

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
