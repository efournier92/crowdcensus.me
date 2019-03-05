class CreateCensuses < ActiveRecord::Migration
  def change
    create_table :censuses do |t|
      t.string      :description,  null: false
      t.string      :option_01,    null: false
      t.string      :option_02,    null: false
      t.string      :option_03
      t.string      :duration
      t.datetime    :end_time,     null: false
      t.boolean     :active,       null: false
      t.belongs_to  :user,         null: false

      t.timestamps null: false
    end
  end
end
