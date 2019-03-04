class CreateComments < ActiveRecord::Migration[5.1.4]
  def change
    create_table :comments do |t|
      t.belongs_to  :user,      null: false
      t.belongs_to  :census,    null: false
      t.string      :comment,   null: false
      t.timestamps null: false
    end
  end
end
