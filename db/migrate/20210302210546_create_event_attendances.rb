class CreateEventAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :event_attendances do |t|
      t.integer :atendee_id, null: false, foreign_key: true
      t.integer :attended_event_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
