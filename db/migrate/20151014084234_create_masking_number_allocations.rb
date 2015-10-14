class CreateMaskingNumberAllocations < ActiveRecord::Migration
  def change
    create_table :masking_number_allocations do |t|
      t.integer :phone_book_id, null: false
      t.integer :phone_circuit_id, null: false
      t.integer :masking_phone_number_id, null: false
      t.datetime :created_at, null: false
      t.integer :last_used_phone_book_entry_id, null: true

      t.index [:phone_book_id, :phone_circuit_id], name: :index_mna_on_phone_book_id_and_phone_circuit_id
    end
  end
end
