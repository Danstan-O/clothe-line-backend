class CreateMerchandizes < ActiveRecord::Migration[7.0]
  def change
    create_table :merchandizes do |t|
      t.string :name
      t.string :image_url
      t.string :category
      t.integer :price
      t.belongs_to :merchant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
