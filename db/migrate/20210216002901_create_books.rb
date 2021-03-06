class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :nome
      t.references :author, foreign_key: true
      t.references :category, foreign_key: true
      t.integer :stock

      t.timestamps
    end
  end
end
