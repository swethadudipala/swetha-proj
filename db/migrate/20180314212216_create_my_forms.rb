class CreateMyForms < ActiveRecord::Migration[5.1]
  def change
    create_table :my_forms do |t|
      t.string :name
      t.string :gender
      t.string :category
      t.string :date
      t.string :subjects
      t.text :address

      t.timestamps
    end
  end
end
