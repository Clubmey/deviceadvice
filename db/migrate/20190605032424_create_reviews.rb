class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :rating
      t.string :comments
      t.integer :device_id
      t.integer :commenter_id

      t.timestamps
    end
  end
end
