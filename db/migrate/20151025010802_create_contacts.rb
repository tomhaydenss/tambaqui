class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :description
      t.string :type
	  t.references :contactable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
