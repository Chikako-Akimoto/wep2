class CreateCalendars < ActiveRecord::Migration[6.1]
  def change
  create_table :calendars id: false do |t|
     t.date :dates  primary_key: true
     t.integer :working_day_flag
      t.timestamps
    end
  end
end
