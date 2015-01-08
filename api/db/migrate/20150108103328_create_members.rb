class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :gender, limit: 1

      t.timestamps
    end
  end
end
