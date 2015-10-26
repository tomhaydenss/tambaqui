class CreateKinships < ActiveRecord::Migration
  def change
    create_table :kinships do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
