class CreateCensuses < ActiveRecord::Migration
  def change
    create_table :censuses do |t|
      t.string      :description
      t.string      :option_01
      t.string      :option_01
      t.string      :option_02
      t.string      :option_03
      t.belongs_to  :user

      t.timestamps null: false
    end
  end
end
