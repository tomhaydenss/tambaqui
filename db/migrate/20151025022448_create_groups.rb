class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :code
      t.string :description
	  t.references :group, index: true, foreign_key: true, column: :main_group_id
      t.timestamps null: false
    end
  end
end
