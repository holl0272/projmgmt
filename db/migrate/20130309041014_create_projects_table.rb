class CreateProjectsTable < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :job_num
      t.date :deadline
      t.text :description
      t.boolean :is_complete, :default => false
      t.integer :client_id
      t.timestamps
    end
  end
end