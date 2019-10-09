class CreateCharactersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.references :battle_class, foreign_key: true
      t.references :profession, foreign_key: true
      t.references :race, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :hit_points
      t.integer :attack_power
      t.integer :defense
    end
  end
end
