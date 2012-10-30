class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.int :organisation_id
      t.string :email
      t.string :phone1
      t.string :phone2
      t.string :fax
      t.string :mobile
      t.string :healthfund
      t.string :fundnumber
      t.string :referee
      t.string :localmedicalofficer
      t.string :comments
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
