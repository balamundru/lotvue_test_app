class CreateUserExtraData < ActiveRecord::Migration[5.2]
  def change
    create_table :user_extra_data do |t|
      t.integer :user_id
      t.string :field_name
      t.string :field_value
      t.timestamps
    end
  end
end
