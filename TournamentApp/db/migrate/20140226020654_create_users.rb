class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :string
      t.string :password_digest
      t.string :string
      t.string :name
      t.string :string

      t.timestamps
    end
  end
end
