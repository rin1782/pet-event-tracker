class CreateUserEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :user_events do |t|
      t.belongs_to :pet, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.datetime :event_date
      t.boolean :rsvp

      t.timestamps
    end
  end
end
