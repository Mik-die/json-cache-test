class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :name
      t.string :phone
      t.boolean :approved, null: false, default: false

      t.timestamps null: false
    end
  end
end
