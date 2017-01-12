class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.text    :m_datetime, null: false, default: '1970-01-01 00:00:00', limit: 19
      t.integer :sys,        null: false, default: 0
      t.integer :dia,        null: false, default: 0
      t.integer :pulse,      null: false, default: 0
      t.text    :artm,       null: false, default: 'N', limit: 1
      t.integer :num,        null: false, default: 1
      t.text    :feeling,    null: false, default: 'U', limit: 1
      t.text    :cmt,                                   limit: 100

#      t.timestamps
    end
  end
end
