class CreateNotes < ActiveRecord::Migration[8.0]
  def change
    create_table :notes do |t|
      t.datetime :measured_at,   null: false
      t.integer  :systolic,      null: false, default: 115
      t.integer  :diastolic,     null: false, default: 75
      t.integer  :heart_rate,    null: false, default: 60
      t.integer  :afib,          null: false, default: 0, limit: 1  # default: 'No'
      t.integer  :state,         null: false, default: 0, limit: 1  # default: 'Good'
      t.integer  :statin_dose,   null: false, default: 2            # default: 80
      t.integer  :euthyrox_dose, null: false, default: 3            # default: 66
      t.decimal  :weight, precision: 4, scale: 1
      t.string   :comment

      t.timestamps
    end
  end
end
