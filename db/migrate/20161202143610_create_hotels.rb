class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :photo_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
