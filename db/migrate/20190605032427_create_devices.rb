class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :description
      t.string :photo
      t.integer :company_id
      t.integer :category_id

      t.timestamps
    end
  end
end
