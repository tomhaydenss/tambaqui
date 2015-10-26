class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :code
      t.string :name
      t.date :birthdate
      t.string :status
      t.references :locality, index: true, foreign_key: true
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
