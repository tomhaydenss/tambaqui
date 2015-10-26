class CreateJoinTableContactsMembers < ActiveRecord::Migration
  def change
    create_join_table :contacts, :members do |t|
      # t.index [:contact_id, :member_id]
      # t.index [:member_id, :contact_id]
    end
	add_foreign_key :contacts_members, :contacts, column: :contact_id
	add_foreign_key :contacts_members, :members, column: :member_id
  end
end
