class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.string :code
      t.string :description

      t.timestamps null: false
    end
  end
end
