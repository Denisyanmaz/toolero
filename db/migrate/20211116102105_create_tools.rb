class CreateTools < ActiveRecord::Migration[6.0]
  def change
    create_table :tools do |t|
      t.string :name
      t.text :description
      t.string :type
      t.integer :price
      t.boolean :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
