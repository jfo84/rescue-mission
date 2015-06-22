class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title, null: false
      t.string :description, null: false

      t.index :title, unique: false
      t.timestamps null: false
    end
  end
end
