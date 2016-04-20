class CreateCensuses < ActiveRecord::Migration
  def change
    create_table :censuses do |t|
      t.string      :description,  null: false
      t.string      :option_01,    null: false
      t.string      :option_02,    null: false
      t.string      :option_03
      t.string      :duration,     null: false
      t.belongs_to  :user

      t.timestamps null: false
    end
  end
end
