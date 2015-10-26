class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :description
      t.date :date
      t.time :start_at
      t.time :end_at
      t.string :location
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
