class CreateJoinTableContactsParents < ActiveRecord::Migration
  def change
    create_join_table :contacts, :parents do |t|
      # t.index [:contact_id, :parent_id]
      # t.index [:parent_id, :contact_id]
    end
	add_foreign_key :contacts_parents, :contacts, column: :contact_id
	add_foreign_key :contacts_parents, :parents, column: :parent_id
  end
end
