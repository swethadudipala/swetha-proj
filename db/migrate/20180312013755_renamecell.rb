class Renamecell < ActiveRecord::Migration[5.1]
  def self.up
  	rename_column :contacts, :cell, :phone  	
  end
  def self.down
  	rename_column :contacts, :phone, :cell
  end
  end
