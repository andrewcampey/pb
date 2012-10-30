class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :schema
      t.string :timestamps

      t.timestamps
    end
  end
end
