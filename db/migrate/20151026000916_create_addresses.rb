class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :zip_code, :limit => 8
      t.string :street_name
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
