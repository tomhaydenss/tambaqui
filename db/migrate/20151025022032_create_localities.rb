class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.string :code
      t.string :description
	  t.references :locality, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
