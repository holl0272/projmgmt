class CreateClientsTable < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.text :address
      t.float :latitude, :default => 0
      t.float :longitude, :default => 0
      t.string :primary_name
      t.string :primary_email
      t.integer :primary_phone, :limit => 8
      t.string :second_name
      t.string :second_email
      t.integer :second_phone, :limit => 8
      t.text :note
      t.timestamps
    end
  end
end