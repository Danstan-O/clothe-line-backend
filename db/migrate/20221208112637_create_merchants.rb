class CreateMerchants < ActiveRecord::Migration[7.0]
  def change
    create_table :merchants do |t|
      t.string :name
      t.string :password_digest
      t.string :profile
      t.string :email

      t.timestamps
    end
  end
end
