class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone, :limit => 8
      t.text :address
      t.integer :ssn, :limit => 8
      t.text :image
      t.text :note
      t.boolean :is_admin, :default => false
      t.boolean :is_pm, :default => false
      t.boolean :is_design, :default => false
      t.boolean :is_dev, :default => false
      t.boolean :is_photo, :default => false
      t.boolean :is_write, :default => false
      t.string :password_digest
      t.timestamps
    end
  end
end
