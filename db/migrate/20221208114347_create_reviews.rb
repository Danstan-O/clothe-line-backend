class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :comments
      t.integer :likes
      t.belongs_to :merchandize, null: false, foreign_key: true
      t.belongs_to :buyer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
