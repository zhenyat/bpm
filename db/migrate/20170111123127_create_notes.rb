class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.datetime :measured_at, null: false, default: '1970-01-01 00:00:00'
      t.integer  :sys,         null: false, default: 0
      t.integer  :dia,         null: false, default: 0
      t.integer  :pulse,       null: false, default: 0
      t.integer  :artm,        null: false, default: 0, limit: 1   # default: 'N'
      t.integer  :trials,      null: false, default: 1
      t.integer  :feeling,     null: false, default: 3, limit: 1   # default: 'U'
      t.text     :cmt,                                  limit: 100

      t.timestamps
    end
  end
end
