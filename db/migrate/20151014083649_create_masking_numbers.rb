class CreateMaskingNumbers < ActiveRecord::Migration
  def change
    create_table :masking_numbers do |t|
      t.string :region_id, null: false
      t.string :phone_number, null: false
      t.datetime :created_at, null: false

      t.index [:phone_number], unique: true
      t.index [:region_id]
      t.index [:created_at]
    end
  end
end
