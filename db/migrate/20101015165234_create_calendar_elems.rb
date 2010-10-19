class CreateCalendarElems < ActiveRecord::Migration
  def self.up
    create_table :calendar_elems do |t|
      t.string :display_style
      t.integer :max_events_shown
      t.integer :max_days_in_past
      t.integer :max_days_in_future
      t.belongs_to :calendar

      t.timestamps
    end
  end

  def self.down
    drop_table :calendar_elems
  end
end
