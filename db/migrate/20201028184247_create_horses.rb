class CreateHorses < ActiveRecord::Migration[6.0]
  def change
    create_table :horses do |t|
      t.string :name
      t.integer :age
      t.float :top_speed
      t.references :breed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
