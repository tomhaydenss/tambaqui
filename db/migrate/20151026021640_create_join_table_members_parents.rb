class CreateJoinTableMembersParents < ActiveRecord::Migration
  def change
    create_join_table :members, :parents do |t|
      # t.index [:member_id, :parent_id]
      # t.index [:parent_id, :member_id]
    end
	add_foreign_key :members_parents, :members, column: :member_id
	add_foreign_key :members_parents, :parents, column: :parent_id
  end
end
