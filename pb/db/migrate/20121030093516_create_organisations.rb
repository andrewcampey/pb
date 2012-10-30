class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.int :id
      t.string :name
      t.string :abnnumber
      t.string :bsbnumber
      t.string :address1line1
      t.string :address1line2
      t.string :address1line3
      t.string :address1suburb
      t.int :address1postcode
      t.string :address1country
      t.string :address2line1
      t.string :address2line2
      t.string :address2line3
      t.string :address2suburb
      t.int :address2postcode
      t.string :address2country
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
