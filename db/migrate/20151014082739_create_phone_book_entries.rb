class CreatePhoneBookEntries < ActiveRecord::Migration
  def change
    create_table :phone_book_entries do |t|
      t.string :name, null: false, default: 'noname'
      t.integer :phone_book_id, null: false
      t.string :phone_number, null: false, default: ''
      t.datetime :created_at, null: false

      t.index [:phone_number]
      t.index [:phone_book_id]
    end
  end
end
