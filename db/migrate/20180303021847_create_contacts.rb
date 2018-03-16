class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :cell
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
