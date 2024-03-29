class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :firstname
      t.string :lastname
      t.string :remember_token
      t.integer :organisation_id
      t.string :timestamps

      t.timestamps
    end
  end
end
