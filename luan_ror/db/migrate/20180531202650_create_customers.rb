class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :nome
      t.string :email
      t.integer :language_id
      t.string :salt
      t.string :password
      t.boolean :followable
      t.integer :status_id
      t.boolean :is_2fa

      t.timestamps
    end
  end
end
