class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.datetime :date, default: DateTime.parse("2017-09-08")
      t.string :speaker
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
