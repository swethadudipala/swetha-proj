class RemoveGenderFromContacts < ActiveRecord::Migration[5.1]
  def change
    remove_column :contacts, :gender, :string
  end
end
