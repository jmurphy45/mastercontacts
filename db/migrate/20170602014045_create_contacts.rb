class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :email
      t.string :business_phone
      t.string :mobile
      t.date :birth_date
      t.string :primary_class

      t.timestamps
    end
  end
end
