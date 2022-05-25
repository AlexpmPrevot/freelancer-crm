class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.bigint :siret
      t.string :phone
      t.string :interlocutor
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
