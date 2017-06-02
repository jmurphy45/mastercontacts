class AddNewFieldsToContact < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :notes, :string
    add_column :contacts, :zip, :string
  end
end
