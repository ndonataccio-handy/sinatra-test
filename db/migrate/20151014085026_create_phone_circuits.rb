class CreatePhoneCircuits < ActiveRecord::Migration
  def change
    create_table :phone_circuits do |t|
      t.datetime :created_at, null: false
      t.integer :reason_id, null: false
      t.string :reason_type, null: false
    end
  end
end
