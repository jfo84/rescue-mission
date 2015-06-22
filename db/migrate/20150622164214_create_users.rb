class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false

      t.index :name, unique: false
      t.timestamps null: false
    end
  end
end
