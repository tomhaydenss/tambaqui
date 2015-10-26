class CreateAddressMembers < ActiveRecord::Migration
  def change
    create_table :address_members do |t|
      t.string :description, :limit => 50
      t.string :street_number, :limit => 10
      t.string :additional_information
      t.belongs_to :address, index: true, foreign_key: true
      t.belongs_to :member, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
