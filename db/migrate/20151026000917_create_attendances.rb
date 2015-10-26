class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :meeting, index: true, foreign_key: true
      t.references :member, index: true, foreign_key: true
      t.boolean :attendee

      t.timestamps null: false
    end
  end
end
