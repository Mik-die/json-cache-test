class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :job, index: true, foreign_key: true
      t.decimal :net_amount

      t.timestamps null: false
    end
  end
end
