class CreatePhoneBook < ActiveRecord::Migration
  def change
    create_table :phone_books do |t|
      t.integer :owner_id, null: false
      t.string  :owner_type, null: false
      t.integer :region_id, null: false
      t.integer :default_phone_book_entry_id, null: false
      t.datetime :created_at, null: false

      t.index [:owner_id, :owner_type]
    end
  end
end
