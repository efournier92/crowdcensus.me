class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.belongs_to  :user,           null: false
      t.belongs_to  :census,         null: false
      t.integer     :chosen_option,  null: false
      t.timestamps                   null: false
    end
  end
end
