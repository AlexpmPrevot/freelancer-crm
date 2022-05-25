class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :status
      t.integer :income
      t.date :deadline
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
